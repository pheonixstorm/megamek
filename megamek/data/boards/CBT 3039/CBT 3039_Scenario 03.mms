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
Name=CBT Historical - War of 3039: Szenario 03
# by scenmaster
# Facts from CBT Historical - War of 3039, Page 45,94; 
# Scenario description
Description=City Petrolina, New Mendham, Benjamin Military District, Draconis Combine, 14. July 3039: Situation: Am 12. July 3039 landen auf New Mendham die Erste und Zweite Amphigean Light Assault Group, unter dem Kommando von Sho-sho Hideki Gauman. In den folgenden Tagen begannen die LAG´s mit konzentrierten Angriffen auf die über den ganzen Planeten verteilten AFFS Truppen. Insbesondere die First Chisholm´s Raiders, die vorrangig als Garnisionstruppen im Hinterland eingesetzt wurden, bekamen die ganze Härte dieser ersten Angriffe zu spüren. Am 14. July greifen zwei Lanzen der 2nd Amphigean Light Assault Group die kleine Garnision in der Siedlung Petrolina an, die aus Elementen der 1st Chisholm´s Raiders besteht. Die Raiders nutzen als Basis in Petrolina das Werksgelände einer Fabrik. Siegesbedingungen: Das Szenario endet, sobald alle Einheiten einer Partei zerstört oder geflohen sind (eindeutiger Sieg). Dem Verteidiger (Raiders) gelingt ein Teilsieg, wenn er mindestens 3 feindliche Einheiten zerstört, bzw. bewegungsunfähig macht. Sonderregeln: Keine. Bemerkungen zur Karte: Wie oben bereits angemerkt, handelt es sich bei der militärischen Basis der Raiders um das Werksgelände einer größeren Fabrik mitten in der Sieldung Petrolina. Das große Gebäude im Südteil der Fabrik ist eine 2 Level große Produktionshalle, in der auch die Battlemechs der Raiders zur Wartung abgestellt werden. Leider lässt es MegaMek zur Zeit noch nicht zu, Gebäude ohne den üblichen Schaden zu betreten. Die Gebäude im N und NW des Geländes (neben den Parkplätzen) sind Verwaltungsgebäude, alle anderen Gebäude Lager- und Produktionsgebäude/-hallen. Die Mauer um die Fabrik soll eigentlich nur eine etwa 2,5 Meter hohe Steinmauer zum Schutz des Werksgeländes darstellen. Auch hier lässt MegaMek die Darstellung von Zäunen (Draht), bzw. kleinen Mauern noch nicht zu. Ich habe sie als Gebäude mit einem KF von 250 erstellt (und unpassierbar), um eine (Gesamt-) zerstörung durch Schüsse zu vermeiden. Wird der KF auf 0 reduziert, stürzt unrealistischerweise die komplette Mauer um das Gelände ein. Im NW der (sichtbaren) Stadt steht ein Sportstadion. 
# Size of the map in mapboards
BoardWidth=1
BoardHeight=1
# Maps can be specified by name.  The order is left-to-right, top-to-bottom
# Any unspecified boards will be set to RANDOM
Maps=/CBT 3039/25x35 New Mendham MilBase

# Faction list
# The player name used to log into the server MUST match this name to play as
# that faction.  Player names can *not* include spaces.
#
Factions=2ndAmphigeanLAG,Chisholms_Raiders

	# Faction location
	# Determines deployment area
	# Valid values are Any,N,NE,E,SE,S,SW,W,NW, and R (random)
	# Location_PlayerA=W
	# Location_PlayerB=E
	# Location_PlayerC=S

# Faction Teams
# Determines which players are on what teams.
# Valid values are any positive integer less than 2^31.
#Team_2ndAmphigeanLAG=1
#Team_Chisholms_Raiders=2
#---------------------------------------------------------------------------------------
# Faction minefields
#Minefields_Mendham_Miliz=4,0,0
#Minefields_Light_Guards=1,0,3

# Mechlist for each faction
#	Tarnschema - nicht bekannt / bubble-brown.gif
#	FCR - Kampflanze
Unit_Chisholms_Raiders_1=Ostsol OTL-4D,Captain Annette Michigan,3,4,N,21,18
Unit_Chisholms_Raiders_2=Centurion CN9-A,Leftenant Archie Olson,4,4,N,22,18
Unit_Chisholms_Raiders_3=Whitworth WTH-1,Sergeant Conor O´Donell,4,5,S,21,21
Unit_Chisholms_Raiders_4=Javelin JVN-10N,Corporal Niklas Hausner,4,5,S,22,21
#	FCR - Sicherheitstruppen
Unit_Chisholms_Raiders_5=Goblin Medium Tank,Tank Crew I,4,4,SW,19,06
Unit_Chisholms_Raiders_6=Heavy Wheeled APC (SRM),Crew APCI,4,4,N,19,04
Unit_Chisholms_Raiders_7=Heavy Wheeled APC (MG),Crew APCII,4,4,NW,12,07
Unit_Chisholms_Raiders_8=Heavy Wheeled APC (MG),Crew APCIII,4,4,SW,20,06
Unit_Chisholms_Raiders_9=Foot Platoon (Laser),Inf Laser Squad,4,5,NW,19,05
Unit_Chisholms_Raiders_10=Foot Platoon (Laser),Inf Laser Squad,4,5,NW,13,08
Unit_Chisholms_Raiders_11=Foot Platoon (SRM),Inf SRM Squad,4,5,NW,20,06
Unit_Chisholms_Raiders_12=Goblin Medium Tank,Tank Crew II,4,5,SW,21,15
Unit_Chisholms_Raiders_13=Foot Platoon (Laser),Inf Laser Squad,4,5,SW,20,14
Unit_Chisholms_Raiders_14=Foot Platoon (Laser),Inf Laser Squad,4,5,SW,18,16
Unit_Chisholms_Raiders_15=Foot Platoon (SRM),Inf SRM Squad,4,5,SW,21,14
Unit_Chisholms_Raiders_16=Heavy Wheeled APC (MG),Crew APCIV,4,4,S,19,15

#	Tarnschema - The Amphigean Light Assault groups rely on camouflage schemes that change from planet to planet. When forced to participate in public parades, the adopt their "junkyard camo", painting their vehicles a combination of flat gray highlighted with rust-brown splotches and black scorch marks.
#	2nd Amphigean Light Assault Group - Kampflanze
Unit_2ndAmphigeanLAG_1=Dragon DRG-1N,Chu-i José Esteves,4,4,NE,01,35
Unit_2ndAmphigeanLAG_2=Dragon DRG-1N,Gunsho Yutako Bosman,4,5,NE,03,34
Unit_2ndAmphigeanLAG_3=Trebuchet TBT-5N,Go-cho Takuya Mashigaya,4,4,NE,01,33
Unit_2ndAmphigeanLAG_4=Panther PNT-9R,Go-cho Carmen Spenser,4,5,NE,03,32
#	2nd Amphigean Light Assault Group - Unterstützunglanze
Unit_2ndAmphigeanLAG_5=Phoenix Hawk PXH-1,Chu-i Michael Talbot,4,4,NW,10,34
Unit_2ndAmphigeanLAG_6=Phoenix Hawk PXH-1K,Shujin Hidetoshi Kamura,3,4,NW,12,34
Unit_2ndAmphigeanLAG_7=Jenner JR7-D,Gunsho Samuel O´Hara,4,4,NW,12,35
Unit_2ndAmphigeanLAG_8=Clint CLNT-2-3T,Gunsho Chiyo Hai,4,5,NW,14,34

#Damage/Ammunition----------------------------------------------------------------------
#HEAD=0,CT=1,RT=2,LT=3,RARM=4,LARM=5,RLEG=6,LLEG=7

Unit_Chisholms_Raiders_9_DamageSpecific=N0:10
Unit_Chisholms_Raiders_10_DamageSpecific=N0:10
Unit_Chisholms_Raiders_11_DamageSpecific=N0:8
Unit_Chisholms_Raiders_13_DamageSpecific=N0:10
Unit_Chisholms_Raiders_14_DamageSpecific=N0:10
Unit_Chisholms_Raiders_15_DamageSpecific=N0:8


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
