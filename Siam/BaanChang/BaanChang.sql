--==========================================================================================================================	
-- CIVILIZATIONS
--==========================================================================================================================	
--------------------------------	
-- Civilization_BuildingClassOverrides 
--------------------------------		
INSERT INTO Civilization_BuildingClassOverrides 
		(CivilizationType, 		BuildingClassType, 			BuildingType)
VALUES	('CIVILIZATION_SIAM',	'BUILDINGCLASS_WORKSHOP',	'BUILDING_SIAM_BAAN_CHANG');
--==========================================================================================================================	

--==========================================================================================================================
-- ARTDEFINES
--==========================================================================================================================	
------------------------------
-- IconTextureAtlases
------------------------------
INSERT INTO IconTextureAtlases 
		(Atlas, 							IconSize, 	Filename, 							IconsPerRow, 	IconsPerColumn)
VALUES	('BUILDING_SIAM_ATLAS', 			256, 		'BaanChangPicture_256.dds',			1, 				1),
		('BUILDING_SIAM_ATLAS', 			128, 		'BaanChangPicture_128.dds',			1, 				1),
		('BUILDING_SIAM_ATLAS', 			64, 		'BaanChangPicture_064.dds',			1, 				1),
		('BUILDING_SIAM_ATLAS', 			45, 		'BaanChangPicture_045.dds',			1, 				1);
--==========================================================================================================================	

--==========================================================================================================================	
-- BUILDINGS
--==========================================================================================================================	
------------------------------
-- Buildings
------------------------------	
INSERT INTO Buildings 	
			(Type,						BuildingClass,	GoldMaintenance,	Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange, GreatPeopleRateModifier,	GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech,	ArtDefineTag, SpecialistType,	SpecialistCount,	MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus,	TradeRouteTargetBonus,	IsNoRiver,	MutuallyExclusiveGroup,	AllowsProductionTradeRoutes,	Help,										Description,						Civilopedia,								Strategy,										IconAtlas,				PortraitIndex)
SELECT		'BUILDING_SIAM_BAAN_CHANG',	BuildingClass,	GoldMaintenance+2,	Cost, FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange,	GreatPeopleRateModifier,	GreatWorkSlotType, GreatWorkCount, FreshWater, FreeStartEra, Happiness, NeverCapture, PrereqTech,	ArtDefineTag, SpecialistType,	SpecialistCount,	MinAreaSize, ConquestProb, HurryCostModifier,	TradeRouteRecipientBonus,	TradeRouteTargetBonus,	IsNoRiver,	MutuallyExclusiveGroup,	AllowsProductionTradeRoutes,	'TXT_KEY_BUILDING_SIAM_BAAN_CHANG_HELP',	'TXT_KEY_BUILDING_SIAM_BAAN_CHANG', 'TXT_KEY_BUILDING_SIAM_BAAN_CHANG_TEXT',	'TXT_KEY_BUILDING_SIAM_BAAN_CHANG_STRATEGY',	'BUILDING_SIAM_ATLAS',	0
FROM Buildings WHERE Type = 'BUILDING_WORKSHOP';	
------------------------------	
-- Building_Flavors
------------------------------		
INSERT INTO Building_Flavors 	
			(BuildingType, 					FlavorType,				Flavor)
VALUES		('BUILDING_SIAM_BAAN_CHANG',	'FLAVOR_GOLD',			100),
			('BUILDING_SIAM_BAAN_CHANG',	'FLAVOR_PRODUCTION',	150),
			('BUILDING_SIAM_BAAN_CHANG',	'FLAVOR_CULTURE',		70),
			('BUILDING_SIAM_BAAN_CHANG',	'FLAVOR_RELIGION',		20);
------------------------------	
-- Building_ClassesNeededInCity
------------------------------		
INSERT INTO Building_ClassesNeededInCity 	
			(BuildingType, 				BuildingClassType)
SELECT		'BUILDING_SIAM_BAAN_CHANG',	BuildingClassType
FROM Building_ClassesNeededInCity WHERE BuildingType = 'BUILDING_WORKSHOP';
------------------------------	
-- Building_YieldChanges
------------------------------		
INSERT INTO Building_YieldChanges 	
			(BuildingType, 					YieldType,			Yield)
VALUES		('BUILDING_SIAM_BAAN_CHANG',	'YIELD_FAITH',		1),
			('BUILDING_SIAM_BAAN_CHANG',	'YIELD_PRODUCTION',	4),
			('BUILDING_SIAM_BAAN_CHANG',	'YIELD_CULTURE',	2);
------------------------------	
-- Building_FeatureYieldChanges
------------------------------
INSERT INTO Building_FeatureYieldChanges	
			(BuildingType,					FeatureType,		YieldType,				Yield)
VALUES		('BUILDING_SIAM_BAAN_CHANG',	'FEATURE_FOREST',	'YIELD_PRODUCTION',		1),
			('BUILDING_SIAM_BAAN_CHANG',	'FEATURE_FOREST',	'YIELD_GOLD',			1);
------------------------------	
-- Building_ResourceYieldChanges
------------------------------
INSERT INTO Building_ResourceYieldChanges	
			(BuildingType,					ResourceType,		YieldType,			Yield)
VALUES		('BUILDING_SIAM_BAAN_CHANG',	'RESOURCE_IVORY',	'YIELD_PRODUCTION',	1),
			('BUILDING_SIAM_BAAN_CHANG',	'RESOURCE_IVORY',	'YIELD_FAITH',		1);
------------------------------
-- Building_ImprovementYieldChanges
------------------------------		
INSERT INTO Building_ImprovementYieldChanges	
			(BuildingType, 					ImprovementType,					YieldType,			Yield)
VALUES		('BUILDING_SIAM_BAAN_CHANG',	'IMPROVEMENT_LUMBERMILL',			'YIELD_FOOD',		1),
			('BUILDING_SIAM_BAAN_CHANG',	'IMPROVEMENT_LUMBERMILL_JUNGLE',	'YIELD_CULTURE',	1),
			('BUILDING_SIAM_BAAN_CHANG',	'IMPROVEMENT_LUMBERMILL',			'YIELD_CULTURE',	1),
			('BUILDING_SIAM_BAAN_CHANG',	'IMPROVEMENT_LUMBERMILL_JUNGLE',	'YIELD_PRODUCTION',	1);
--==========================================================================================================================
--==========================================================================================================================

