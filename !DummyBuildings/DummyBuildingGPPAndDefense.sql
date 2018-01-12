--==========================================================================================================================	
-- BUILDING CLASSES
--==========================================================================================================================	
------------------------------	
-- BuildingClasses
------------------------------
INSERT INTO BuildingClasses 	
			(Type,									DefaultBuilding,					NoLimit)
VALUES		('BUILDINGCLASS_DUMMYGPPANDDEFENSE',	'BUILDING_DUMMYGPPANDDEFENSE',		1);
--==========================================================================================================================	

--==========================================================================================================================	
-- BUILDINGS
--==========================================================================================================================	
------------------------------
-- Buildings
------------------------------	
INSERT INTO Buildings 	
			(Type,							BuildingClass,						GoldMaintenance,	Cost,	FaithCost,	EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, Defense,	ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange, GreatPeopleRateModifier,	GreatWorkSlotType, GreatWorkCount,	FreshWater, FreeStartEra, UnmoddedHappiness,	Happiness,	NeverCapture,	PrereqTech, ArtDefineTag, GreatPeopleRateChange,	SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, HurryCostModifier,	Description,							IconAtlas,			PortraitIndex)
SELECT		'BUILDING_DUMMYGPPANDDEFENSE',	'BUILDINGCLASS_DUMMYGPPANDDEFENSE',	0,					-1,		-1,			EnhancedYieldTech, TechEnhancedTourism, AllowsRangeStrike, 100,		ExtraCityHitPoints, TrainedFreePromotion,	CitySupplyFlat,	DefenseHappinessChange,	2,							GreatWorkSlotType, -1,				FreshWater, FreeStartEra, 0,					0,			1,				PrereqTech, ArtDefineTag, GreatPeopleRateChange,	SpecialistType, SpecialistCount, MinAreaSize, ConquestProb, -1,					'TXT_KEY_BUILDING_DUMMYGPPANDDEFENSE', 'CIV_COLOR_ATLAS',	0
FROM Buildings WHERE Type = 'BUILDING_PALACE';	
------------------------------	
-- Building_Flavors
------------------------------		
INSERT INTO Building_Flavors 	
			(BuildingType, 					FlavorType,				Flavor)
VALUES		('BUILDING_DUMMYGPPANDDEFENSE',	'FLAVOR_CITY_DEFENSE',	-999);
------------------------------	
-- Building_ClassesNeededInCity
------------------------------		
INSERT INTO Building_ClassesNeededInCity 	
		(BuildingType, 					BuildingClassType)
SELECT	'BUILDING_DUMMYGPPANDDEFENSE',	BuildingClassType
FROM Building_ClassesNeededInCity WHERE BuildingType = 'BUILDING_PALACE';
------------------------------	
-- Building_ResourceQuantityRequirements
------------------------------
INSERT INTO Building_ResourceQuantityRequirements 	
			(BuildingType,					ResourceType, Cost)
SELECT		'BUILDING_DUMMYGPPANDDEFENSE',	ResourceType, Cost
FROM Building_ResourceQuantityRequirements WHERE BuildingType = 'BUILDING_PALACE';
--==========================================================================================================================
--==========================================================================================================================
