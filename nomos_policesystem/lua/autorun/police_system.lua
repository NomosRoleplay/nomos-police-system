
hook.Add("Initialize","Nomos:ArgentSale:SystemArgent::Initialize",function()

  if not file.Exists("Nomos","DATA") then

    file.CreateDir("Nomos")

  end





    if not file.Exists("Nomos/Police","DATA") then

    file.CreateDir("Nomos/Police")

  end




end)



hook.Add("PlayerInitialSpawn","Nomos:Police:SystemArgent::PlayerInitialSpawn",function(ply)

     if not file.Exists("Nomos/Police/" .. ply:SteamID64() .. ".txt","DATA") then

        if ply:IsPlayer() then

    file.Write("Nomos/Police/" .. ply:SteamID64() .. ".txt", "Recrue")
        end
    end

end)

util.AddNetworkString("Nomos:PoliceSystem::setgrade")
util.AddNetworkString("Nomos:Argentsalle::setgrade")
util.AddNetworkString("Nomos:PoliceSystem::inforegarde")
util.AddNetworkString("Nomos:Argentsalle::inforegarde")
util.AddNetworkString("Nomos:PoliceSystem::Info")
util.AddNetworkString("Nomos:Argentsalle::Info")


net.Receive("Nomos:PoliceSystem::setgrade", function(_,ply)

if LocalPlayer():IsSuperAdmin() then
      local steamid = net.ReadString()

      local grade = net.ReadString()

          file.Write("Nomos/Police/" .. steamid .. ".txt", grade)

          DarkRP.notify(ply,1,4,"Grade de police Set !")
end

end)

net.Receive("Nomos:Argentsalle::setgrade", function(_,ply)
  if LocalPlayer():IsSuperAdmin() then

      local steamid = net.ReadString()

      local grade = net.ReadString()

          file.Write("Nomos/argentsalle/" .. steamid .. ".txt", grade)

          DarkRP.notify(ply,1,4,"Argent salle Set !")
end

end)


net.Receive("Nomos:PoliceSystem::inforegarde", function(_,ply)
  if LocalPlayer():IsSuperAdmin() then

      local steamid2 = net.ReadString()

    local solde = file.Read("Nomos/Police/".. steamid2 ..".txt", "DATA")


    net.Start("Nomos:PoliceSystem::Info")
    net.WriteString(solde)
        net.WriteString(steamid2)
    net.Send(ply)

  end
end)


net.Receive("Nomos:Argentsalle::inforegarde", function(_,ply)
  if LocalPlayer():IsSuperAdmin() then

      local steamid2 = net.ReadString()

    local solde = file.Read("Nomos/argentsalle/".. steamid2 ..".txt", "DATA")


    net.Start("Nomos:Argentsalle::Info")
    net.WriteString(solde)
        net.WriteString(steamid2)
    net.Send(ply)
  end
end)
