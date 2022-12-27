
surface.CreateFont("NPCTITLEFONT", {
    font = "Roboto",
    size = 25,
    weight = 800
})

hook.Add("HUDPaint","Nomos:PoliceSystem::HUDPainT",function()
if LocalPlayer():Team() == TEAM_POLICIER or LocalPlayer():Team() == TEAM_RAID or LocalPlayer():Team() == TEAM_CHEFRAID or LocalPlayer():Team() == TEAM_BAC then  

                for k, v in pairs( player.GetAll() ) do
        if v:Team() == TEAM_POLICIER or v:Team() == TEAM_RAID or v:Team() == TEAM_CHEFRAID or v:Team() == TEAM_BAC then  

        local Pos = ( v:GetPos() + Vector( 0, 0, 75 ) ):ToScreen()
    if LocalPlayer():GetPos():Distance(v:GetPos()) < 900 then 

            net.Start("Nomos:AdminMode::CheckGradePolice")
    net.WriteEntity(v)
    net.SendToServer()


        net.Receive("Nomos:AdminMode::ReturnCheckGradePolice",function()
        local gradepolice = net.ReadString()
draw.SimpleTextOutlined(gradepolice, "Trebuchet18", Pos.x, Pos.y - 10, color_white, 1, 1, 1, color_black)
end)

end
    end
        end

      
end
  end)

concommand.Add("Nomos_Gestion_Menu", function(ply, text, team, cmd)
    if LocalPlayer():IsSuperAdmin() then
        local Base = vgui.Create("DFrame")
        Base:SetSize(500, 150)
        Base:SetTitle("")
        Base:ShowCloseButton(false)
        Base:SetVisible(true)
        Base:MakePopup()
        Base:SetDraggable(false)
        Base:Center()
        Base:SetContentAlignment(5)

        Base.Paint = function(self, w, h)
            draw.RoundedBox(10, 0, 0, w, h, Color(255, 11, 0, 150))
            draw.DrawText("                                           Nomos Gestion", "NPCTITLEFONT", -60, 4, color_white)
        end

        local Close = vgui.Create("DButton", Base)
        Close:SetSize(40, 15)
        Close:SetPos(450, 8)
        Close:SetText("X")
        Close:SetTooltip("Fermer")
        Close:SetTextColor(Color(0, 0, 0, 255))

        Close.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        Close.DoClick = function()
            Base:Close()
                   
        end

          local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(300, 70)
        valider:SetText("Argent Salle")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
            Base:Close()

            local Base = vgui.Create("DFrame")
        Base:SetSize(500, 150)
        Base:SetTitle("")
        Base:ShowCloseButton(false)
        Base:SetVisible(true)
        Base:MakePopup()
        Base:SetDraggable(false)
        Base:Center()
        Base:SetContentAlignment(5)

        Base.Paint = function(self, w, h)
            draw.RoundedBox(10, 0, 0, w, h, Color(255, 11, 0, 150))
            draw.DrawText("                                           Nomos Gestion", "NPCTITLEFONT", -60, 4, color_white)
        end

        local Close = vgui.Create("DButton", Base)
        Close:SetSize(40, 15)
        Close:SetPos(450, 8)
        Close:SetText("X")
        Close:SetTooltip("Fermer")
        Close:SetTextColor(Color(0, 0, 0, 255))

        Close.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        Close.DoClick = function()
            Base:Close()
                   
        end

          local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(300, 70)
        valider:SetText("Informations")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
            Base:Close()

             local Base = vgui.Create("DFrame")
        Base:SetSize(500, 150)
        Base:SetTitle("")
        Base:ShowCloseButton(false)
        Base:SetVisible(true)
        Base:MakePopup()
        Base:SetDraggable(false)
        Base:Center()
        Base:SetContentAlignment(5)

        Base.Paint = function(self, w, h)
            draw.RoundedBox(10, 0, 0, w, h, Color(255, 11, 0, 150))
            draw.DrawText("                                           Nomos Argent Salle", "NPCTITLEFONT", -60, 4, color_white)
        end

        local Close = vgui.Create("DButton", Base)
        Close:SetSize(40, 15)
        Close:SetPos(450, 8)
        Close:SetText("X")
        Close:SetTooltip("Fermer")
        Close:SetTextColor(Color(0, 0, 0, 255))

        Close.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        Close.DoClick = function()
            Base:Close()
                   
        end


ChooseClass3 = vgui.Create("DTextEntry", Base)
        ChooseClass3:SetPos(150, 70)
        ChooseClass3:SetSize(200, 30)
        ChooseClass3:SetValue("SteamID64")


        local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(200, 115)
        valider:SetText("Valider")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
            Base:Close()
net.Start("Nomos:Argentsalle::inforegarde")
net.WriteString(ChooseClass3:GetText())
net.SendToServer()
           
        end


end


  local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(100, 70)
        valider:SetText("Set argent salle")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
            Base:Close()
             local Base = vgui.Create("DFrame")
        Base:SetSize(500, 150)
        Base:SetTitle("")
        Base:ShowCloseButton(false)
        Base:SetVisible(true)
        Base:MakePopup()
        Base:SetDraggable(false)
        Base:Center()
        Base:SetContentAlignment(5)

        Base.Paint = function(self, w, h)
            draw.RoundedBox(10, 0, 0, w, h, Color(255, 11, 0, 150))
            draw.DrawText("                                           Nomos Argent Salle", "NPCTITLEFONT", -60, 4, color_white)
        end

        local Close = vgui.Create("DButton", Base)
        Close:SetSize(40, 15)
        Close:SetPos(450, 8)
        Close:SetText("X")
        Close:SetTooltip("Fermer")
        Close:SetTextColor(Color(0, 0, 0, 255))

        Close.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        Close.DoClick = function()
            Base:Close()
                   
        end

                 
ChooseClass3 = vgui.Create("DTextEntry", Base)
        ChooseClass3:SetPos(150, 30)
        ChooseClass3:SetSize(200, 30)
        ChooseClass3:SetValue("SteamID64")
      
      ChooseClass4 = vgui.Create("DTextEntry", Base)
        ChooseClass4:SetPos(150, 70)
        ChooseClass4:SetSize(200, 30)
        ChooseClass4:SetValue("Argent")

        local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(200, 115)
        valider:SetText("Valider")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
if ChooseClass4:GetText() == "Argent" or ChooseClass4:GetText() == "" or ChooseClass4:GetText() == " " then return end
            Base:Close()

net.Start("Nomos:Argentsalle::setgrade")
net.WriteString(ChooseClass3:GetText())
net.WriteString(ChooseClass4:GetText())
net.SendToServer()
           
        end
    end
end


  local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(100, 70)
        valider:SetText("Grade Police")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
            Base:Close()

   local Base = vgui.Create("DFrame")
        Base:SetSize(500, 150)
        Base:SetTitle("")
        Base:ShowCloseButton(false)
        Base:SetVisible(true)
        Base:MakePopup()
        Base:SetDraggable(false)
        Base:Center()
        Base:SetContentAlignment(5)

        Base.Paint = function(self, w, h)
            draw.RoundedBox(10, 0, 0, w, h, Color(255, 11, 0, 150))
            draw.DrawText("                                           Nomos Gestion", "NPCTITLEFONT", -60, 4, color_white)
        end

        local Close = vgui.Create("DButton", Base)
        Close:SetSize(40, 15)
        Close:SetPos(450, 8)
        Close:SetText("X")
        Close:SetTooltip("Fermer")
        Close:SetTextColor(Color(0, 0, 0, 255))

        Close.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        Close.DoClick = function()
            Base:Close()
                   
        end

          local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(300, 70)
        valider:SetText("Informations")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
            Base:Close()

             local Base = vgui.Create("DFrame")
        Base:SetSize(500, 150)
        Base:SetTitle("")
        Base:ShowCloseButton(false)
        Base:SetVisible(true)
        Base:MakePopup()
        Base:SetDraggable(false)
        Base:Center()
        Base:SetContentAlignment(5)

        Base.Paint = function(self, w, h)
            draw.RoundedBox(10, 0, 0, w, h, Color(255, 11, 0, 150))
            draw.DrawText("                                           Nomos Grade Police", "NPCTITLEFONT", -60, 4, color_white)
        end

        local Close = vgui.Create("DButton", Base)
        Close:SetSize(40, 15)
        Close:SetPos(450, 8)
        Close:SetText("X")
        Close:SetTooltip("Fermer")
        Close:SetTextColor(Color(0, 0, 0, 255))

        Close.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        Close.DoClick = function()
            Base:Close()
                   
        end


ChooseClass3 = vgui.Create("DTextEntry", Base)
        ChooseClass3:SetPos(150, 70)
        ChooseClass3:SetSize(200, 30)
        ChooseClass3:SetValue("SteamID64")


        local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(200, 115)
        valider:SetText("Valider")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
            Base:Close()
net.Start("Nomos:PoliceSystem::inforegarde")
net.WriteString(ChooseClass3:GetText())
net.SendToServer()
           
        end


end


  local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(100, 70)
        valider:SetText("Set Grade")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
            Base:Close()
             local Base = vgui.Create("DFrame")
        Base:SetSize(500, 150)
        Base:SetTitle("")
        Base:ShowCloseButton(false)
        Base:SetVisible(true)
        Base:MakePopup()
        Base:SetDraggable(false)
        Base:Center()
        Base:SetContentAlignment(5)

        Base.Paint = function(self, w, h)
            draw.RoundedBox(10, 0, 0, w, h, Color(255, 11, 0, 150))
            draw.DrawText("                                           Nomos Grade Police", "NPCTITLEFONT", -60, 4, color_white)
        end

        local Close = vgui.Create("DButton", Base)
        Close:SetSize(40, 15)
        Close:SetPos(450, 8)
        Close:SetText("X")
        Close:SetTooltip("Fermer")
        Close:SetTextColor(Color(0, 0, 0, 255))

        Close.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        Close.DoClick = function()
            Base:Close()
                   
        end

                 
ChooseClass3 = vgui.Create("DTextEntry", Base)
        ChooseClass3:SetPos(150, 70)
        ChooseClass3:SetSize(200, 30)
        ChooseClass3:SetValue("SteamID64")
        local ChooseClass = vgui.Create("DComboBox", Base)
        ChooseClass:SetPos(150, 30)
        ChooseClass:SetSize(200, 30)
        ChooseClass:SetValue("Grade")
        ChooseClass:AddChoice("Recrue")
        ChooseClass:AddChoice("Brigadier")
                ChooseClass:AddChoice("Brigadier-Major")
        ChooseClass:AddChoice("Lieutenant")
        ChooseClass:AddChoice("Capitaine")
        ChooseClass:AddChoice("Commandant")
        ChooseClass:AddChoice("Commissaire")

        ChooseClass.OnSelect = function(panel, index, value)
            action = value
        end

        local valider = vgui.Create("DButton", Base)
        valider:SetSize(100, 30)
        valider:SetPos(200, 115)
        valider:SetText("Valider")
        valider:SetTextColor(Color(0, 0, 0, 255))

        valider.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        valider.DoClick = function()
            Base:Close()
net.Start("Nomos:PoliceSystem::setgrade")
net.WriteString(ChooseClass3:GetText())
net.WriteString(action)
net.SendToServer()
           
        end
    end
end
        
    end
end)

net.Receive("Nomos:PoliceSystem::Info", function()

    local steamid3 = net.ReadString()

    local grade = net.ReadString()

            local Base = vgui.Create("DFrame")
        Base:SetSize(500, 150)
        Base:SetTitle("")
        Base:ShowCloseButton(false)
        Base:SetVisible(true)
        Base:MakePopup()
        Base:SetDraggable(false)
        Base:Center()
        Base:SetContentAlignment(5)

        Base.Paint = function(self, w, h)
            draw.RoundedBox(10, 0, 0, w, h, Color(255, 11, 0, 150))
            draw.DrawText("                                           Nomos Grade Police", "NPCTITLEFONT", -60, 4, color_white)
                        draw.DrawText("                                           SteamID : " .. grade , "NPCTITLEFONT", -60, 40, color_white)
                        draw.DrawText("                                           Grade : " .. steamid3, "NPCTITLEFONT", -60, 90, color_white)

        end

        local Close = vgui.Create("DButton", Base)
        Close:SetSize(40, 15)
        Close:SetPos(450, 8)
        Close:SetText("X")
        Close:SetTooltip("Fermer")
        Close:SetTextColor(Color(0, 0, 0, 255))

        Close.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        Close.DoClick = function()
            Base:Close()
                   
        end

end)

net.Receive("Nomos:Argentsalle::Info", function()

    local steamid3 = net.ReadString()

    local grade = net.ReadString()

            local Base = vgui.Create("DFrame")
        Base:SetSize(500, 150)
        Base:SetTitle("")
        Base:ShowCloseButton(false)
        Base:SetVisible(true)
        Base:MakePopup()
        Base:SetDraggable(false)
        Base:Center()
        Base:SetContentAlignment(5)

        Base.Paint = function(self, w, h)
            draw.RoundedBox(10, 0, 0, w, h, Color(255, 11, 0, 150))
            draw.DrawText("                                           Nomos Argent Salle", "NPCTITLEFONT", -60, 4, color_white)
                        draw.DrawText("                                           SteamID : " .. grade , "NPCTITLEFONT", -60, 40, color_white)
                        draw.DrawText("                                           Argent : " .. steamid3, "NPCTITLEFONT", -60, 90, color_white)

        end

        local Close = vgui.Create("DButton", Base)
        Close:SetSize(40, 15)
        Close:SetPos(450, 8)
        Close:SetText("X")
        Close:SetTooltip("Fermer")
        Close:SetTextColor(Color(0, 0, 0, 255))

        Close.Paint = function(self, w, h)
            draw.RoundedBox(3, 0, 0, w, h, Color(230, 92, 78))
        end

        Close.DoClick = function()
            Base:Close()
                   
        end

end)

