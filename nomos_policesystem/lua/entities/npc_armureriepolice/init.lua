AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/props_office/file_cabinet_03.mdl")
    self:SetHullType(HULL_HUMAN)
    self:SetHullSizeNormal()
    self:SetNPCState(NPC_STATE_SCRIPT)
    self:SetSolid(SOLID_BBOX)
    self:CapabilitiesAdd(CAP_ANIMATEDFACE)
    self:SetUseType(SIMPLE_USE)
    self:DropToFloor()
    self:SetMaxYawSpeed(90)
end


function ENT:OnTakeDamage()
    return false 
end


function ENT:AcceptInput(name, activator,caller)
    if name == "Use" and caller:IsPlayer() then
if caller:Team() == TEAM_POLICIER or caller:Team() == TEAM_RAID or caller:Team() == TEAM_CHEFRAID or caller:Team() == TEAM_BAC then  


    local grade = file.Read("Nomos/Police/".. caller:SteamID64() ..".txt", "DATA")

caller:Give("stungun")
caller:Give("wcd_speedchecker")
caller:Give("weapon_ticketbook")
caller:Give("itemstore_checker")
caller:Give("weapon_r_handcuffs")
caller:Give("dradio")

if grade == "Recrue" then
            
    caller:Give("cw_mr96")

                                                caller:GiveAmmo( 400, ".44 Magnum", false )


end

DarkRP.notify(caller,2,5,"Vous venez de prendre votre équipement")
if grade == "Brigadier" then
            
    caller:Give("cw_mr96")

                                                caller:GiveAmmo( 400, ".44 Magnum", false )


end

if grade == "Brigadier-Major" then
    caller:Give("cw_deagle")
        caller:Give("cw_mr96")

    
                                                caller:GiveAmmo( 400, ".44 Magnum", false )
    caller:GiveAmmo( 400, ".50 AE", false )
end


if grade == "Lieutenant" then
    caller:Give("cw_deagle")
        caller:Give("cw_mr96")
        caller:Give("cw_mp5")

                                                caller:GiveAmmo( 400, ".44 Magnum", false )
    caller:GiveAmmo( 400, ".50 AE", false )
        caller:GiveAmmo( 400, "9x19MM", false )

end

if grade == "Capitaine" then
    caller:Give("cw_deagle")
        caller:Give("cw_mr96")
        caller:Give("cw_mp5")
                caller:Give("cw_g3a3")
                                                caller:GiveAmmo( 400, ".44 Magnum", false )
    caller:GiveAmmo( 400, ".50 AE", false )
        caller:GiveAmmo( 400, "9x19MM", false )
            caller:GiveAmmo( 400, "7.62x51MM", false )
     

end

if grade == "Commandant" then
    caller:Give("cw_deagle")
        caller:Give("cw_mr96")
        caller:Give("cw_mp5")
                caller:Give("cw_g3a3")
                                caller:Give("cw_frag_grenade")
                                                caller:GiveAmmo( 2, "Frag Grenades", false )
                                                caller:GiveAmmo( 400, ".44 Magnum", false )
    caller:GiveAmmo( 400, ".50 AE", false )
        caller:GiveAmmo( 400, "9x19MM", false )
            caller:GiveAmmo( 400, "7.62x51MM", false )
     


end

if grade == "Commissaire" then
caller:GiveAmmo( 400, ".44 Magnum", false )
    caller:GiveAmmo( 400, ".50 AE", false )
        caller:GiveAmmo( 400, "9x19MM", false )
            caller:GiveAmmo( 400, "7.62x51MM", false )
                caller:GiveAmmo( 2, "Frag Grenades", false )
                    caller:GiveAmmo( 2, "Smoke Grenades", false )
                        caller:GiveAmmo( 2, "Flash Grenades", false )
                            caller:GiveAmmo( 2, "Flash Grenades", false )
                                caller:Give("cw_deagle")
                                    caller:Give("cw_mr96")
                                        caller:Give("cw_mp5")
                                            caller:Give("cw_g3a3")
                                                caller:Give("cw_frag_grenade")
                                                    caller:Give("cw_smoke_grenade")
                                                        caller:Give("cw_flash_grenade")
                                                    

                                

end



else
    DarkRP.notify(caller,2,5,"Désoler mais vous n'avez pas la cléf du casier")
end




    end
end



