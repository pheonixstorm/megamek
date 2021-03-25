/*  
* MegaMek - Copyright (C) 2021 - The MegaMek Team  
*  
* This program is free software; you can redistribute it and/or modify it under  
* the terms of the GNU General Public License as published by the Free Software  
* Foundation; either version 2 of the License, or (at your option) any later  
* version.  
*  
* This program is distributed in the hope that it will be useful, but WITHOUT  
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS  
* FOR A PARTICULAR PURPOSE. See the GNU General Public License for more  
* details.  
*/ 
package megamek.common.force;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import megamek.common.Entity;
import megamek.common.IPlayer;

/**
 * A representation of a force or part of a force. Very similar to MHQ's Force.
 * A Force in MM belongs to a player. It can hold units of the owner's team.
 * @author Simon
 */
public final class Force implements Serializable {
    
    private static final long serialVersionUID = -3870731687743542253L;

    public static final int NO_FORCE = -1;
    
    private String name;
    private int id;
    private int ownerId = -1;
    private int parent = NO_FORCE;
    private ArrayList<Integer> entities = new ArrayList<>();
    private ArrayList<Integer> subForces = new ArrayList<>();
    
    /** Creates a top-level force, i.e. one with no parent force. */
    Force(String n, int nId, IPlayer owner) {
        this(n, nId);
        Objects.requireNonNull(owner);
        ownerId = owner.getId();
    }

    /** Creates a subforce. */
    Force(String n, int nId, Force fParent) {
        this(n, nId);
        Objects.requireNonNull(fParent);
        parent = fParent.getId();
        ownerId = fParent.getOwnerId();
    }
    
    /** 
     * Creates a force with name n and id nId. Without either a parent or owner
     * this force is a stub and should not be added to a Forces object. Used to
     * parse the forceString, e.g. when loading a MUL. 
     */
    Force(String n, int nId) {
        Objects.requireNonNull(n);
        name = n;
        id = nId;
    }
    
    /**
     * Creates a force object that is not integrated into any forces. Used
     * to send a new force to the server. In other cases, use Forces.add.
     */
    public static Force createSubforce(String name, Force fParent) {
        return new Force(name, -1, fParent);
    }
    
    /**
     * Creates a force object that is not integrated into any forces. Used
     * to send a new force to the server. In other cases, use Forces.add.
     */
    public static Force createToplevelForce(String name, IPlayer owner) {
        return new Force(name, -1, owner);
    }

    public String getName() {
        return name;
    }

    public void setName(String n) {
        name = n;
    }
    
    public int getId() {
        return id;
    }
    
    /** Returns the player ID of the owner of this force. */
    public int getOwnerId() {
        return ownerId;
    }
    
    void setOwnerId(int newOwner) {
        ownerId = newOwner;
    }
    
    /** Returns the Force ID of this force's parent force; -1 if top-level. */
    public int getParentId() {
        return parent;
    }
    
    void setParent(int newParentId) {
        parent = newParentId;
    }
    
    public boolean isTopLevel() {
        return parent == NO_FORCE;
    }
    
    public int subForceCount() {
        return subForces.size();
    }
    
    public int entityCount() {
        return entities.size();
    }
    
    /** 
     * Returns the number of direct children of this force, i.e. the
     * number of direct members + the number of direct subforces. 
     */
    public int getChildCount() {
        return entities.size() + subForces.size();
    }
    
    /** Returns true if the force contains neither units nor subforces. */
    public boolean isEmpty() {
        return getChildCount() == 0;
    }
    
    /** 
     * Returns the id of the entity at the provided index from the list of
     * direct members of this force (not subforces). Indices outside of
     * 0 ... entityCount() - 1 will result in an exception.
     */
    public int getEntityId(int index) {
        return entities.get(index);
    }
    
    /** 
     * Returns the id of the force at the provided index from the list of
     * subforces of this force. Indices outside of 0 ... subForceCount() - 1 
     * will result in an exception.
     */
    public int getSubForceId(int index) {
        return subForces.get(index);
    }
    
    /** 
     * Returns true if the provided entity is among the force's direct members. 
     * Does NOT check if the entity is part of any subforce. 
     */
    public boolean containsEntity(Entity entity) {
        return containsEntity(entity.getId());
    }
    
    /** 
     * Returns true if the provided entity is among the force's direct members. 
     * Does NOT check if the entity is part of any subforce. 
     */
    public boolean containsEntity(int id) {
        return entities.contains(id);
    }
    
    /** 
     * Returns the index of the provided entity in the list of direct members of this force.
     * Returns -1 if the entity is no direct member of this force.  
     */
    public int entityIndex(Entity entity) {
        return entities.indexOf(entity.getId());
    }
    
    /** 
     * Returns true if the provided force is among this force's direct subforces. 
     */
    public boolean containsSubForce(Force force) {
        return subForces.contains(force.getId());
    }
    
    /** 
     * Returns the index of the provided force in the list of direct subforces of this force.
     * Returns -1 if the force is no direct subforce of this force.  
     */
    public int subForceIndex(Force force) {
        return subForces.indexOf(force.getId());
    }
    
    void addSubForce(Force subForce) {
        subForces.add(subForce.getId());
    }
    
    public List<Integer> getEntities() {
        return Collections.unmodifiableList(entities);
    }
    
    public List<Integer> getSubForces() {
        return Collections.unmodifiableList(subForces);
    }
    
    void addEntity(Entity entity) {
        entities.add(entity.getId());
    }
    
    void removeEntity(Entity entity) {
        entities.remove((Integer)entity.getId());
    }
    
    void removeEntity(int id) {
        entities.remove((Integer)id);
    }
    
    /** Removes the given id from the list of (direct) subforces. */
    void removeSubForce(int id) {
        subForces.remove((Integer)id);
    }
    
    protected Force clone() {
        Force clone = new Force(name, id);
        clone.parent = parent;
        clone.ownerId = ownerId;
        clone.subForces = new ArrayList<Integer>(subForces);
        clone.entities = new ArrayList<Integer>(entities);
        return clone;
    }
    
    @Override
    public String toString() {
        List<String> en = entities.stream().map(e -> Integer.toString(e)).collect(Collectors.toList());
        List<String> sf = subForces.stream().map(e -> Integer.toString(e)).collect(Collectors.toList());
        return name + ": [" + id + "]; Parent: " + parent + "; Entities: " 
                + String.join(",", en) + "; Subforces: " + String.join(",", sf)
                + "; Owner: " + ownerId;
    }
    
    /** Moves up the given entityId by one position if possible. Returns true when an actual change occurred. */
    boolean moveUp(int entityId) {
        if (!containsEntity(entityId)) {
            return false;
        }
        int index = entities.indexOf(entityId);
        if (index > 0) {
            Collections.swap(entities, index, index - 1);
            return true;
        }
        return false;
    }
    
    /** Moves down the given entityId by one position if possible. Returns true when an actual change occurred. */
    boolean moveDown(int entityId) {
        if (!containsEntity(entityId)) {
            return false;
        }
        int index = entities.indexOf(entityId);
        if (index < entities.size() - 1) {
            Collections.swap(entities, index, index + 1);
            return true;
        }
        return false;
    }
    
    /** Moves up the given subforce by one position if possible. Returns true when an actual change occurred. */
    boolean moveUp(Force subforce) {
        if (!containsSubForce(subforce)) {
            return false;
        }
        int index = subForces.indexOf(subforce.getId());
        if (index > 0) {
            Collections.swap(subForces, index, index - 1);
            return true;
        }
        return false;
    }
    
    /** Moves down the given subforce by one position if possible. Returns true when an actual change occurred. */
    boolean moveDown(Force subforce) {
        if (!containsSubForce(subforce)) {
            return false;
        }
        int index = subForces.indexOf(subforce.getId());
        if (index < subForces.size() - 1) {
            Collections.swap(subForces, index, index + 1);
            return true;
        }
        return false;
    }
}