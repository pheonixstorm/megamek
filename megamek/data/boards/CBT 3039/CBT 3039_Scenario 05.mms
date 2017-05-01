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
Name=CBT Historical - War of 3039: Szenario 05
# by scenmaster
# Facts from CBT Historical - War of 3039, Page 45,94; 
# Scenario description
Description=Provinz Tarangire, New Mendham, Benjamin Military District, Draconis Combine, 11. Augst 3039: Situation: Am 11. August beginnt auf Befehl Marshal Riffenbergs ein starker kombinierter Angriff auf die Stellungen der 1st und 2nd Amphigean Light Assault Groups unter dem Kommando von Sho-sho Grauman. Im Verlauf des Vormittags trifft eine verstärkte Kompanie Battlemechs der Davion Light Guards auf einen gleichstarken Verband in der ausgetrockneten Savanne der Provinz Tarangire.  Siegesbedingungen: Bei dem Gefecht gewinnt die Seite, die alle feindlichen Battlemechs vernichtet, bzw. als letztes das Schlachtfeld besetzt.  Sonderregeln: Aufgrund der langen vorangegangenen Kämpfe auf New Mendham und der eingeschränkten Verfügbarkeit von Ersatzteilen und Reparaturkapazitäten, weisen einige Einheiten zu Beginn des Gefechtes Schäden auf. Achtung: Sollte auf Grund der Initialschäden ein Battlemech, oder wahrscheinlicher ein Panzer ausfallen oder einen kritischen Treffer erleiden, der das Fahrzeug unbrauchbar macht, sollte das Scenarion erneut gestartet werden (Spielerentscheidung).  Bemerkungen zur Karte: Die Schlacht findet in der Savanne der Provinz Tarangire statt. Die Tagestemperatur beträgt am Morgen 38 Grad, kann bis zum Mittag aber noch steigen. Es steht den Spielern frei, das Gefecht später und bei höheren Temperaturen durchzuführen, um z.B. extreme Umweltbedingungen darzustellen (Temperatur über 50 Grad). Hierzu sind die Vorgaben im File: gameoptions3039Scn05 entsprechend anzupassen. Die verzweigte Sandsenke in der Mitte der Karte (von Nord nach Süd) stellt einen ausgetrockneten Flussarm dar. Achtung: Sollte a
# Size of the map in mapboards
BoardWidth=1
BoardHeight=1
# Maps can be specified by name.  The order is left-to-right, top-to-bottom
# Any unspecified boards will be set to RANDOM
Maps=/CBT 3039/45x35 New Mendham SavanneII

# Faction list
# The player name used to log into the server MUST match this name to play as
# that faction.  Player names can *not* include spaces.
#
Factions=1stAmphigeanLAG,Davion_Light_Guards

	# Faction location
	# Determines deployment area
	# Valid values are Any,N,NE,E,SE,S,SW,W,NW, and R (random)
	# Location_PlayerA=W
	# Location_PlayerB=E
	# Location_PlayerC=S

# Faction Teams
# Determines which players are on what teams.
# Valid values are any positive integer less than 2^31.
#Team_1stAmphigeanLAG=1
#Team_Davion_Light_Guards=2
#---------------------------------------------------------------------------------------
# Faction minefields
#Minefields_Mendham_Miliz=4,0,0
#Minefields_Light_Guards=1,0,3

# Mechlist for each faction
#	Tarnschema - Gesprenkelt, Grün-Sandfarben
#	Davion Light Guards - Befehlslanze
Unit_Davion_Light_Guards_1=Marauder MAD-3D,Major George Crook,3,4,S,11,01
Unit_Davion_Light_Guards_2=JagerMech JM6-A,Leftenant Edward Hawkins,4,4,S,13,01
Unit_Davion_Light_Guards_3=Centurion CN9-A,Sergeant-Major Peter Sellers,3,4,S,14,01
Unit_Davion_Light_Guards_4=Blackjack BJ-1DC,Sergeant Chloe McElister,4,5,S,12,02
#	Davion Light Guards - Kampflanze 
Unit_Davion_Light_Guards_5=Blackjack BJ-1DB,Leftenant Emilio Castros,4,4,S,32,01
Unit_Davion_Light_Guards_6=Enforcer ENF-4R,Sergeant Philippe Gonzales,4,4,S,31,03
Unit_Davion_Light_Guards_7=Wolfhound WLF-1,Sergeant Emma Thomson,4,4,S,34,03
Unit_Davion_Light_Guards_8=Javelin JVN-10N,Sergeant Oisin McAleese,4,5,S,35,01
#	Davion Light Guards - Unterstützungslanze
Unit_Davion_Light_Guards_9=Shadow Hawk SHD-2D,Leftenant Mahinda Rajapaksa,4,4,S,01,01
Unit_Davion_Light_Guards_10=Assassin ASN-21,Sergeant Michael König,4,4,S,03,03
Unit_Davion_Light_Guards_11=Whitworth WTH-1S,Sergeant Ryan Harrison,4,4,S,03,01
Unit_Davion_Light_Guards_12=Valkyrie VLK-QA,Sergeant Egeas Papoulias,4,5,S,01,03
#	Davion Light Guards - Panzerlanze
Unit_Davion_Light_Guards_13=Drillson Heavy Hover Tank,Tank Crew,4,5,S,41,01
Unit_Davion_Light_Guards_14=Drillson Heavy Hover Tank,Tank Crew,4,5,S,43,01
Unit_Davion_Light_Guards_15=Condor Heavy Hover Tank (Davion),Tank Crew,4,5,S,40,01
Unit_Davion_Light_Guards_16=Condor Heavy Hover Tank (Davion),Tank Crew,4,5,S,44,01

#	Tarnschema - The Amphigean Light Assault groups rely on camouflage schemes that change from planet to planet. When forced to participate in public parades, the adopt their "junkyard camo", painting their vehicles a combination of flat gray highlighted with rust-brown splotches and black scorch marks.

#	1st Amphigean Light Assault Group - Befehlslanze
Unit_1stAmphigeanLAG_1=Grand Dragon DRG-1G,Sho-sa Akira Brahe,3,4,N,28,35
Unit_1stAmphigeanLAG_2=Orion ON1-K,Chu-i Michael Dudikoff,4,4,N,30,35
Unit_1stAmphigeanLAG_3=Whitworth WTH-1,Chu-i Samuel Minuro,4,5,N,31,34
Unit_1stAmphigeanLAG_4=Hermes III HER-4K,Kashira Tsuneyasu Togai,4,5,N,32,34
#	1st Amphigean Light Assault Group - Kampflanze
Unit_1stAmphigeanLAG_5=Dragon DRG-1N,Chu-i Linnea Rasmussen,4,4,N,04,35
Unit_1stAmphigeanLAG_6=Panther PNT-9R,Sho-ko Jeremiah Lewis,3,4,N,04,33
Unit_1stAmphigeanLAG_7=Dragon DRG-1N,Kashira Melanie Taylor,4,5,N,06,35
Unit_1stAmphigeanLAG_8=Panther PNT-9R,Kashira Hayato Oni,4,5,N,06,33
#	1st Amphigean Light Assault Group - Scoutlanze
Unit_1stAmphigeanLAG_9=Wolverine WVR-6K,Chu-i Carl Walters,4,4,N,40,33
Unit_1stAmphigeanLAG_10=Trebuchet TBT-5N,Kashira Souta Kwai,4,5,N,42,32
Unit_1stAmphigeanLAG_11=Jenner JR7-F,Kashira Daiki Tomusai,4,5,N,39,31
Unit_1stAmphigeanLAG_12=Firestarter FS9-H,Kashira Eric Sommé,4,5,N,43,31
#	1st Amphigean Light Assault Group - Panzerlanze
Unit_1stAmphigeanLAG_13=Manticore Heavy Tank,Tank Crew,4,5,N,19,35
Unit_1stAmphigeanLAG_14=Manticore Heavy Tank,Tank Crew,4,5,N,21,35
Unit_1stAmphigeanLAG_15=Vedette Medium Tank,Tank Crew,4,5,N,20,33



#Damage/Ammunition----------------------------------------------------------------------
#HEAD=0,CT=1,RT=2,LT=3,RARM=4,LARM=5,RLEG=6,LLEG=7

Unit_Davion_Light_Guards_2_Damage=1
Unit_Davion_Light_Guards_3_Damage=1
Unit_Davion_Light_Guards_6_Damage=1
Unit_Davion_Light_Guards_10_Damage=1
Unit_Davion_Light_Guards_13_Damage=2
Unit_Davion_Light_Guards_15_Damage=2

Unit_1stAmphigeanLAG_2_Damage=2
Unit_1stAmphigeanLAG_5_Damage=1
Unit_1stAmphigeanLAG_7_Damage=2
Unit_1stAmphigeanLAG_9_Damage=1
Unit_1stAmphigeanLAG_13_Damage=2
Unit_1stAmphigeanLAG_14_Damage=2

#---------------------------------------------------------------------------------------
# Additional advantages to add to pilots. Most of these require the 'MaxTech
# Level3 Pilot Advantages' game option to be turned on. The possible values
# are:
# dodge_maneuver, maneuvering_ace, melee_specialist, pain_resistance
# Multiple advantages for one pilot are seperated by spaces
# Unit_Light_Guards_2_Advantages=melee_specialist 
# Unit_Mendham_Miliz_1_Advantages=weapon_specialist_autocannon

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
GameOptionsFile=gameoptions3039Scn05.xml
