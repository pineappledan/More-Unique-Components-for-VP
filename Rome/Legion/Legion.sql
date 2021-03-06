--==========================================================================================================================	
-- PROMOTIONS
--==========================================================================================================================	
------------------------------
-- UnitPromotions
------------------------------
INSERT INTO UnitPromotions 
			(Type, 													Description, 													Help, 																	Sound, 				WorkRateMod,	CombatPercent,	MovesChange,	AttackMod,	DefenseMod, ExperiencePercent,	IgnoreZOC,			LostWithUpgrade,	CannotBeChosen, PortraitIndex, 	IconAtlas, 			PediaType, 		PediaEntry)
VALUES		('PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM',			'TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM',				'TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_HELP',				'AS2D_IF_LEVELUP',	0,				0,				0,				0,			0,			0,					0,					0, 					1,				18, 			'PROMOTION_ATLAS', 	'PEDIA_MELEE',	'TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM'),
			('PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_ON_LEGION',	'TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_ON_LEGION',	'TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_ON_LEGION_HELP',		'AS2D_IF_LEVELUP',	0,				0,				0,				0,			0,			0,					0,					1, 					1,				36, 			'PROMOTION_ATLAS', 	'PEDIA_MELEE',	'TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_ON_LEGION'),
			('PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_EFFECT',		'TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_EFFECT',		'TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_EFFECT_HELP',			'AS2D_IF_LEVELUP',	60,				0,				0,				0,			0,			0,					0,					1, 					1,				36, 			'PROMOTION_ATLAS', 	'PEDIA_MELEE',	'TXT_KEY_PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_EFFECT');
--------------------------------	
-- Unit_FreePromotions
--------------------------------
INSERT INTO Unit_FreePromotions
			(UnitType,				PromotionType)
VALUES		('UNIT_ROMAN_LEGION',	'PROMOTION_UNIT_ROME_PRAEFECTUS_CASTRORUM_ON_LEGION');

UPDATE UnitPromotions SET LostWithUpgrade = '0' WHERE Type = 'PROMOTION_AOE_STRIKE_FORTIFY';