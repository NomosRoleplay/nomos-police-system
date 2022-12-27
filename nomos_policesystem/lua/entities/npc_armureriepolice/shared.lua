





ENT.Base	    			= "base_ai"
ENT.Type	    			= "ai"	
ENT.PrintName				= "Npc Armurerie"
ENT.Author					= "Paul_Furiox"
ENT.Category				= "Nomos Roleplay"
ENT.Contact					= "Discord Paul_Furiox#1140"
ENT.Instructions			= "Approchez vous du NPC et actionnez votre touche [USE]"
ENT.Spawnable				= true


function ENT:SetAutomaticFrameAdvance(byUsingAnim)
	self.AutomaticFrameAdvance = byUsingAnim
end