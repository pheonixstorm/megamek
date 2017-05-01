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
Name=CBT Historical - War of 3039: Szenario 04
# by scenmaster
# Facts from CBT Historical - War of 3039, Page 45,94; 
# Scenario description
Description=Provinz Greggville, New Mendham, Benjamin Military District, Draconis Combine, 04. Augst 3039: Situation: Ende July 3039 befinden sich die Streitkräfte Marshal Riffenberg´s und Sho sho Hideki Grauman´s in einer Pattsituation. Keine der beiden Parteien kann entscheidende Erfolge erzielen. In dieser Situation entscheidet sich Marshal Riffenberg für eine ungewöhnliche Strategie. Er beauftragt Colonel Gregory Sykes, einen kleinen schlagkräftigen gemischten Verband aus Freiwilligen zusammenzustellen und im Hinterland der 1st und 3rd Amphigean Light Assault Groups schnelle Angriffe auf Nachschubkonvois, Kommunikationseinrichtungen und Versorgungsdepots auszuführen. Am 04. August 3039 greift Ledger´s Lanze, Davion Light Guards, im engen Tone-gawa Tal eine Nachschubkonvoi der 1st Amphigean´s an. Ziel des Angriffs ist es, so viele Nachschubfahrzeuge wie möglich zu zerstören.   Siegesbedingungen: Wie bereits genannt, ist der Auftrag der Davion Light Guard´s Lanze, am Nachschubkonvoi soviel Schaden wie möglich anzurichten. Es ist nicht erforderlich, die Eskorte des Konvois zu zerstören (Battlemechs und Panzerfahrzeuge). Jeder Flatbed Truck und der Jeep ist 1 Siegpunkt (SP), jeder APC und jeder Panzer (Hover oder Kette) 2 SP´e und Battlechs sind 3 SP wert. Am Ende des Kampfes werden alle SP addiert. Bei 0 SP oder einem negativen Ergebnis (-1 oder weniger) gewinnt die Amphigean LAG. Bei 1 bis 3 SP ist es ein Unentschieden, bei 4 bis 6 SP ein geringer Erfolg für die Davion Light Guards und bei mehr als 7 SP ein überragender Sieg der Davion Light Guards. Es ist zu beachten, dass zerstörte Davion Battlemechs vom erreichten Ergebnis abgezogen werden. Bsp.: Der Davion Spieler zerstört 3 Flatbed Trucks, zwei Panzer und einen APC; verliert aber dabei zwei Battlemechs. Das Endergebnis ist: 3x1 (Flatbed Truck) + 3x2 (Panzer und APC) = 9 SP - 2x3 SP (verlorene Battlemechs) = 3 SP und damit ein Unentschieden.  Sonderregeln: Der Amphigean Spieler muss seinen Fahrzeugkonvoi jede Runde mindestens 2 Felder (2 BP) über die Straße weiter bewegen. Es ist ihm nicht erlaubt, die Fahrzeuge stehen zu lassen. Außerdem muss er für die Nachschubfahrzeuge (Flatbed, Jeep, APC) die Straße nutzen. Der Davion Spieler muss sich zurückziehen, wenn er mehr als 2 Battlemechs verloren hat.  Bemerkungen zur Karte: Die Straße, auf dem der Nachschubkonvoi fährt, führt durch ein enges Tal in den Kita-dake Bergen. Der Fluss Tone-gawa hat dem Tal seinen Namen gegeben. Der Fluss ist nicht allzu tief (ca. 3-4 Meter) aber ein schnell fließender Fluss mit starken Stromschnellen (deshalb Tiefenlevel 1). Die Siegpunktetabelle und das Szenario ist noch nicht erprobt. Veröffentlicht eure Erfahrungen und Änderungswünsche an den Kräften/Vorgaben im Forum/Open Discussions.
# Size of the map in mapboards
BoardWidth=1
BoardHeight=1
# Maps can be specified by name.  The order is left-to-right, top-to-bottom
# Any unspecified boards will be set to RANDOM
Maps=/CBT 3039/45x25 New Mendham Schlucht

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
#	Davion Light Guards - Kampflanze
Unit_Davion_Light_Guards_1=Shadow Hawk SHD-2D,Captain Maik Ledger,3,4,NE,31,24
Unit_Davion_Light_Guards_2=Enforcer ENF-4R,Leftenant Amanda Lear,4,4,N,32,25
Unit_Davion_Light_Guards_3=Whitworth WTH-1S,Sergeant Josef Abramowitsch,4,4,N,33,25
Unit_Davion_Light_Guards_4=Hornet HNT-151,Corporal Ginevra Caprice,4,5,N,33,24


#	Tarnschema - The Amphigean Light Assault groups rely on camouflage schemes that change from planet to planet. When forced to participate in public parades, the adopt their "junkyard camo", painting their vehicles a combination of flat gray highlighted with rust-brown splotches and black scorch marks.

#	1st Amphigean Light Assault Group - Unterstützungslanze
Unit_1stAmphigeanLAG_1=Dragon DRG-1N,Chu-i Masaru Tetsuhara,4,4,NE,03,08
Unit_1stAmphigeanLAG_2=Hunchback HBK-4J,Gunsho Isabelle Vascez,4,5,NE,03,10
Unit_1stAmphigeanLAG_3=Vulcan VL-2T,Go-cho Bruce Darnell,5,5,NE,05,07
Unit_1stAmphigeanLAG_4=Jenner JR7-D,Go-cho Naoki Dengsai,4,5,SE,05,09
#	1st Amphigean Light Assault Group - Supply Convoy
Unit_1stAmphigeanLAG_5=Jeep,Driver,6,4,SE,09,09
Unit_1stAmphigeanLAG_6=Flatbed Truck,Driver,6,4,SE,07,08
Unit_1stAmphigeanLAG_7=Flatbed Truck,Driver,6,4,NE,03,09
Unit_1stAmphigeanLAG_8=APC (Wheeled),Driver,5,4,NE,02,09
Unit_1stAmphigeanLAG_9=Heavy Tracked APC,Driver,5,4,SE,08,08
Unit_1stAmphigeanLAG_10=J. Edgar Light Hover Tank,Tank Crew I,4,5,SE,10,11
Unit_1stAmphigeanLAG_11=Pegasus Scout Hover Tank,Tank Crew III,4,5,NE,12,09
Unit_1stAmphigeanLAG_12=APC (Wheeled),Driver,5,4,NE,06,07
Unit_1stAmphigeanLAG_13=J. Edgar Light Hover Tank,Tank Crew II,4,5,SE,09,08
Unit_1stAmphigeanLAG_14=Pegasus Scout Hover Tank,Tank Crew IV,4,5,NE,14,11
Unit_1stAmphigeanLAG_15=Flatbed Truck,Driver,6,4,NE,05,08
Unit_1stAmphigeanLAG_16=Flatbed Truck,Driver,6,4,NE,04,08
Unit_1stAmphigeanLAG_17=Vedette Medium Tank,Tank Crew V,4,5,NE,01,10

#Damage/Ammunition----------------------------------------------------------------------
#HEAD=0,CT=1,RT=2,LT=3,RARM=4,LARM=5,RLEG=6,LLEG=7

#Unit_Chisholms_Raiders_9_DamageSpecific=N0:10
#Unit_Chisholms_Raiders_10_DamageSpecific=N0:10
#Unit_Chisholms_Raiders_11_DamageSpecific=N0:8
#Unit_Chisholms_Raiders_13_DamageSpecific=N0:10
#Unit_Chisholms_Raiders_14_DamageSpecific=N0:10
#Unit_Chisholms_Raiders_15_DamageSpecific=N0:8


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
GameOptionsFile=gameoptions3039.xml
