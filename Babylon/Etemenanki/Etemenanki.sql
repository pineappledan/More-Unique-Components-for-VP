--==========================================================================================================================	
-- CIVILIZATIONS
--==========================================================================================================================	
--------------------------------	
-- Civilization_BuildingClassOverrides 
--------------------------------		
INSERT INTO Civilization_BuildingClassOverrides 
		(CivilizationType, 			BuildingClassType, 				BuildingType)
VALUES	('CIVILIZATION_BABYLON',	'BUILDINGCLASS_NATIONAL_EPIC',	'BUILDING_BABYLON_ETEMENANKI');
--==========================================================================================================================	

--==========================================================================================================================
-- ARTDEFINES
--==========================================================================================================================	
------------------------------
-- IconTextureAtlases
------------------------------
INSERT INTO IconTextureAtlases 
		(Atlas, 							IconSize, 	Filename, 								IconsPerRow, 	IconsPerColumn)
VALUES	('BUILDING_BABYLON_ATLAS', 			256, 		'EtemenankiPicture_256.dds',			1, 				1),
		('BUILDING_BABYLON_ATLAS', 			128, 		'EtemenankiPicture_128.dds',			1, 				1),
		('BUILDING_BABYLON_ATLAS', 			64, 		'EtemenankiPicture_064.dds',			1, 				1),
		('BUILDING_BABYLON_ATLAS', 			45, 		'EtemenankiPicture_045.dds',			1, 				1);
--==========================================================================================================================	

--==========================================================================================================================	
-- BUILDINGS
--==========================================================================================================================	
------------------------------
-- Buildings
------------------------------	
INSERT INTO Buildings 	
			(Type,							BuildingClass,	GoldMaintenance, Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange, GreatPeopleRateModifier,	GreatWorkSlotType,	GreatWorkCount,		FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, GreatPeopleRateChange,	SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	NationalPopRequired,	NumCityCostMod,	NukeImmune,	Help,										ThemingBonusHelp,									Description,							Civilopedia,								Strategy,										IconAtlas,					PortraitIndex)
SELECT		'BUILDING_BABYLON_ETEMENANKI',	BuildingClass,	GoldMaintenance, Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange,	GreatPeopleRateModifier+5,	GreatWorkSlotType,	GreatWorkCount+1,	FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech, ArtDefineTag, GreatPeopleRateChange,	SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	NationalPopRequired,	NumCityCostMod,	NukeImmune,	'TXT_KEY_BUILDING_BABYLON_ETEMENANKI_HELP',	'TXT_KEY_BUILDING_BABYLON_ETEMENANKI_THEME_HELP',	'TXT_KEY_BUILDING_BABYLON_ETEMENANKI', 'TXT_KEY_BUILDING_BABYLON_ETEMENANKI_TEXT',	'TXT_KEY_BUILDING_BABYLON_ETEMENANKI_STRATEGY',	'BUILDING_BABYLON_ATLAS',	0
FROM Buildings WHERE Type = 'BUILDING_NATIONAL_EPIC';	
------------------------------	
-- Building_Flavors
------------------------------		
INSERT INTO Building_Flavors 	
			(BuildingType, 					FlavorType,				Flavor)
VALUES		('BUILDING_BABYLON_ETEMENANKI',	'FLAVOR_GROWTH',		80),
			('BUILDING_BABYLON_ETEMENANKI',	'FLAVOR_GREAT_PEOPLE',	60),
			('BUILDING_BABYLON_ETEMENANKI',	'FLAVOR_SCIENCE',		80),
			('BUILDING_BABYLON_ETEMENANKI',	'FLAVOR_CULTURE',		15);
------------------------------	
-- Building_YieldChanges
------------------------------		
INSERT INTO Building_YieldChanges 	
			(BuildingType, 					YieldType,			Yield)
VALUES		('BUILDING_BABYLON_ETEMENANKI',	'YIELD_CULTURE',	3),
			('BUILDING_BABYLON_ETEMENANKI',	'YIELD_FOOD',		3);
------------------------------	
-- Building_YieldFromPolicyUnlock
------------------------------
INSERT INTO Building_YieldFromPolicyUnlock
			(BuildingType,					YieldType,					Yield)
VALUES		('BUILDING_BABYLON_ETEMENANKI',	'YIELD_GOLDEN_AGE_POINTS',	50);
------------------------------	
-- Building_YieldFromPurchase
------------------------------
INSERT INTO Building_YieldFromPurchase
			(BuildingType,					YieldType,			Yield)
VALUES		('BUILDING_BABYLON_ETEMENANKI',	'YIELD_FOOD',		15),
			('BUILDING_BABYLON_ETEMENANKI',	'YIELD_SCIENCE',	15);
------------------------------	
-- Building_BuildingClassYieldChanges
------------------------------
INSERT INTO Building_BuildingClassYieldChanges 	
			(BuildingType,					BuildingClassType,			YieldType,			YieldChange)
VALUES		('BUILDING_BABYLON_ETEMENANKI',	'BUILDINGCLASS_SHRINE',		'YIELD_FOOD',		2),
			('BUILDING_BABYLON_ETEMENANKI',	'BUILDINGCLASS_MONUMENT',	'YIELD_SCIENCE',	1);
------------------------------	
-- Building_YieldFromBirth
------------------------------
INSERT INTO Building_YieldFromBirth 	
			(BuildingType,					YieldType,			Yield)
VALUES		('BUILDING_BABYLON_ETEMENANKI',	'YIELD_CULTURE',	15);
------------------------------	
-- Building_ThemingBonuses
------------------------------
INSERT INTO Building_ThemingBonuses	
			(BuildingType,					Description,									Bonus,	UniqueEras,	MustBeArt,	RequiresUniquePlayers,	AIPriority)
VALUES		('BUILDING_BABYLON_ETEMENANKI',	'TXT_KEY_BUILDING_BABYLON_ETEMENANKI_THEME',	4,		1,			1,			1,						1);
------------------------------	
-- Building_ClassesNeededInCity
------------------------------		
INSERT INTO Building_ClassesNeededInCity 	
			(BuildingType, 					BuildingClassType)
VALUES		('BUILDING_BABYLON_ETEMENANKI',	'BUILDINGCLASS_MONUMENT');
--==========================================================================================================================
--==========================================================================================================================

