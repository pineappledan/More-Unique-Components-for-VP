-- Langskib
-- Author: De_Genius, adan_eslavo
-- DateCreated: 17/12/2017
--------------------------------------------------------------
function VikingsExplorationEmbarkation(playerID)
	local player = Players[playerID]

	for unit in player:Units() do
		if unit:IsEmbarked() then
			local sameTile = false
			local plot = unit:GetPlot()
			
			for iVal = 0,(plot:GetNumUnits() - 1) do
				local outrigger = plot:GetUnit(iVal)
				
				if outrigger:GetOwner() == playerID and outrigger:IsHasPromotion(GameInfoTypes["PROMOTION_UNIT_DENMARK_VIKING_EXPLORATION"]) then
					sameTile = true
				end
			end
			
			if sameTile then
				if not unit:IsHasPromotion(GameInfoTypes["PROMOTION_UNIT_DENMARK_VIKING_EXPLORATION_CAN_CROSS_OCEAN"]) then
					unit:SetHasPromotion(GameInfoTypes["PROMOTION_UNIT_DENMARK_VIKING_EXPLORATION_CAN_CROSS_OCEAN"], true)
				end
			else
				if unit:IsHasPromotion(GameInfoTypes["PROMOTION_UNIT_DENMARK_VIKING_EXPLORATION_CAN_CROSS_OCEAN"]) and plot:GetTerrainType() ~= GameInfoTypes.TERRAIN_OCEAN then
					unit:SetHasPromotion(GameInfoTypes["PROMOTION_UNIT_DENMARK_VIKING_EXPLORATION_CAN_CROSS_OCEAN"], false)
				end
			end
		end
	end
end

GameEvents.PlayerDoTurn.Add(VikingsExplorationEmbarkation)