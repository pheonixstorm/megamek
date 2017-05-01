# 
#  A MegaMek Scenario file
#
# Future features for the scenario language
#    Alternate victory conditions
#    Staggered entry (reinforcements)
#    Specified critical slot damage
#
#---------------------------------------------------------------------------------------
# Versionstamp required to be recognized as a Scenario file
MMSVersion=1

# Name of the scenario
Name=CBT Historical - War of 3039: Szenario 01
# by scenmaster
# Facts from CBT Historical - War of 3039, Page 45,94; Ein Erbe für den Drachen (Seite 409ff)/Heir to the Dragon (Page ??)
# Scenario description
Description=Am 16.April 3039 landen die Davion Light Guards und die First Chisholm´s Raiders unter dem Kommando von Marshal Jonathan Riffenberg auf dem Planeten New Mendham. Der Invasionsstreitmacht ist Teil der ersten Welle der AFFS im Militärdistrikt Benjamin. Nach der Landung auf New Mendham beginnen Scoutlanzen mit der Erkundung. Eine dieser Lanzen, Shadow one, dringt in die an die LZ angrenzende Provinz Greggville vor und hat den Auftrag, die Kleinstadt Kempis zu erkunden.

# Size of the map in mapboards
BoardWidth=1
BoardHeight=1

# Maps can be specified by name.  The order is left-to-right, top-to-bottom
# Any unspecified boards will be set to RANDOM
Maps=/CBT 3039/25x35 New Mendham

# Faction list
# The player name used to log into the server MUST match this name to play as
# that faction.  Player names can *not* include spaces.
#
Factions=Mendham_Miliz,Light_Guards

	# Faction location
	# Determines deployment area
	# Valid values are Any,N,NE,E,SE,S,SW,W,NW, and R (random)
	# Location_PlayerA=W
	# Location_PlayerB=E
	# Location_PlayerC=S

# Faction Teams
# Determines which players are on what teams.
# Valid values are any positive integer less than 2^31.
Team_Mendham_Miliz=1
Team_Light_Guards=2
#Team_PlayerC=2
#---------------------------------------------------------------------------------------
# Faction minefields
# Gives the player minefields to deploy, the first number is conventional, the
# second command-detonated and the last is vibrabombs.
#Minefields_Mendham_Miliz=2,0,2
#Minefields_Light_Guards=1,0,3

# Mechlist for each faction
#
# Units are constructed as Unit_<faction name>_<#>, where the faction name 
# matches the one listed in the Faction property and the # is a sequential 
# numbering starting at 1.  If there is a gap in the numbering, any units after
# the gap will be ignored.
#

# The format is MechRef,PilotName,PilotGunnery,PilotPiloting,facing,x,y
# Facing and coordinates are optional. Facing is one of NW, N, NE, SE, S, SW
# Example: Unit_Irregulars_1=HGN-732,Col Rhonda Snord,2,1,N,01,32

#	Tarnschema - Gesprenkelt, Grün-Sandfarben
#	Light_Guards - Shadow Eins
Unit_Light_Guards_1=Hatchetman HCT-3F,Lieutenant Roscoe Walker,4,4,S,23,07
Unit_Light_Guards_2=Hatchetman HCT-3F,Sergeant Alison,3,5,SE,22,05
Unit_Light_Guards_3=Valkyrie VLK-QA,Corporal Daniel Reed,4,5,SE,23,04
Unit_Light_Guards_4=Valkyrie VLK-QA,Corporal Bobby McCullough,4,4,SE,20,04

#	Tarnschema - Dunkelgrau
#	Mendham_Miliz - Stadtkampflanze
Unit_Mendham_Miliz_1=UrbanMech UM-R60,Chu-i Tokiko Yasu,4,4,NW,19,34
Unit_Mendham_Miliz_2=UrbanMech UM-R60,Gunsho Chizu Usagi,4,5,SE,13,34
Unit_Mendham_Miliz_3=UrbanMech UM-R60,Go-cho Benjamin Davis,4,4,SE,22,32
Unit_Mendham_Miliz_4=Locust LCT-1V,Go-cho Matsuo Basho,4,5,NW,24,27
#Alternativ#Unit_Mendham_Miliz_4=Jenner JR7-D,MK III,4,5,NW,24,27


# Additional advantages to add to pilots. Most of these require the 'MaxTech
# Level3 Pilot Advantages' game option to be turned on. The possible values
# are:
# dodge_maneuver, maneuvering_ace, melee_specialist, pain_resistance
# Multiple advantages for one pilot are seperated by spaces
Unit_Light_Guards_2_Advantages=melee_specialist 
Unit_Mendham_Miliz_1_Advantages=weapon_specialist_autocannon

#set autoeject, only for mechs
Unit_PlayerA_2_AutoEject=false
Unit_PlayerB_2_AutoEject=true

#set which units should be commanders (for commander killed VC)
Unit_PlayerA_1_Commander=true
Unit_PlayerB_1_Commander=true
Unit_PlayerC_1_Commander=true

# To initially damage units, you can use a unit armor property, which specifies
# armor and internal values.  Values above the unit's nominal value for that
# location will be ignored.  
# Armor is specified in this order: 
# H,CT,CTR,RT,RTR,LT,LTR,RA,LA,RL,LL,HI,CTI,RTI,LTI,RAI,LAI,RLI,LLI
# Here's an example:
#
# Unit_Kurita_1_Armor=0,30,19,24,20,24,10,24,24,33,33,1,25,17,17,13,13,17,17
#
# Alternately, if you want more random damage, and want to allow critical
# damage before the game starts, you can use a unit damage property, which
# specifies a number of blocks of 5 damage that will be randomly applied to
# the unit using the standard hit chart.  Any internal and critical hits will
# be resolved normally.
# Warning: this can result in the unit being destroyed before the game begins.
# Unit_PlayerB_1_Damage=5

# Advanced Dammage Modification
# 
# Mech Locations
# 	HEAD=0,CT=1,RT=2,LT=3,RARM=4,LARM=5,RLEG=6,LLEG=7
# Example for Mechs:
#   N0:1 Means Normal Armor Location 0 Set to 1
#   I2:2 Means Internal Armor Location 2 Set to 2
#   R2:3 Means Rear Armor Location 2 Set to 3
#
# Tank Locations
# 	Body=0,FRONT=1,RIGHT=2,LEFT=3,REAR=4,TURRET=5
#
# Infantry Location
#	Men = 0 (Will set the number of men in the platoon)
#
# Battle Armor
#      Unit#=0(First Unit Number) to Armor 
#      EG Unit_Kurita_3_DamageSpecific=N2:1,N3:0
#          Will set unit 3 to have 1 Armor Remaning
#          while unit 4 Destroyed
#
# Proto Mechs
#      Head=0,Torso =1,RARM=2,LARM=3,LEGS=4,Main Gun=5
#      
Unit_Kurita_1_DamageSpecific=I1:10,N2:2
Unit_Kurita_2_DamageSpecific=N0:1
Unit_Kurita_4_DamageSpecific=N2:1,N2:2
Unit_Kurita_3_DamageSpecific=N2:1,N3:0
Unit_Kurita_5_DamageSpecific=N4:1,N1:1


# Critical Hits
# eg Unit_Kurita_1_CritHit=1:8
# This does a crit hit on location 1 slot 8.  
#
# Mech Crit Hits
# 	HEAD=0,CT=1,RT=2,LT=3,RARM=4,LARM=5,RLEG=6,LLEG=7
# 	Slots starting from 1 to the number of filled critical slots
#
# Vehicle Crit Hits
#       Location is zero.
#       Slots is one of the following:
# 	1 = Crew stunned for 3 turns
# 	2 = Main weapon jams for 1 turn
# 	3 = Engine Destroyed Immobile
# 	4 = Crew killed (tank dead)
# 	5 = Fuel Tank/Engine Shielding (tank dead) 
# 	6 = Power Plant Hit (tank dead)
#
# Proto Mechs
# 	Head=0,Torso=1,RARM=2,LARM=3,LEGS=4,Main Gun=5
# 	Slots starting from 1 to the number of critical hit boxes
#
#       In addition, you can specify whether the Torso weapons
#       should be damaged by damaging the following torso "slots":
#               Torso Weapon A=5,Torso Weapon B=6
#
#
Unit_Kurita_1_CritHit=1:3,1:2
Unit_Kurita_4_CritHit=2:1,1:5
Unit_Kurita_5_CritHit=0:3
Unit_Kurita_6_CritHit=2:10

# Set Ammo Ammount(Only Works for Mechs)
#
# Note will not be able to specifiy a value larger then Inital Ammout
# 
# Loc and Slots are the same as Crit Locations
#
# For a Mech this would
# Unit_Kurita_6_SetAmmoTo=2:11-3
# Would set Ammo at Slot 2:11 to 3 points
# 
Unit_Kurita_6_SetAmmoTo=2:11-1

# Set game options file
# This is an xml file which can be created by copying your
# mmconf/gameoptions.xml
# path is specified relative to the scenario file
# This is one way to set victory conditions
GameOptionsFile=gameoptions3039.xml
