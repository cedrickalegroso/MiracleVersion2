-- ModFreakz
-- For more mods, head to : https://discord.gg/ukgQa5K
-- Don't change shit in here if you don't know what you're doing.

local MFB = MF_Boxer

function MFB:Awake(...)
    while not ESX do Citizen.Wait(0); end
    while not ESX.IsPlayerLoaded() do Citizen.Wait(0); end
    self.PlayerData = ESX.GetPlayerData()
    ESX.TriggerServerCallback('MF_Boxing:GetStartData', function(retVal) self.dS = true; self.cS = retVal; self:Start(); end)
end

function MFB:Start()
  if self.dS and self.cS then self:Update(); end
end

function MFB:Update(...)
  if self.ShowBlips then self:DoBlips(); end
  local lastKeyTimer = GetGameTimer()
  TriggerServerEvent('MF_Boxing:DoStuff','test')
  while self.dS and self.cS do
    Citizen.Wait(0)
    if self.PlayerData.job.name == self.JobName and not self.DoingAction then
      local closest,dist = self:GetClosestAction()
      if closest and dist < self.DrawTextDist then
        if (closest.action == "Train" and not self.BoxingEvent) or closest.action ~= "Train" then
          pos = closest.pos
          Utils.DrawText3D(pos.x,pos.y,pos.z, closest.text)
          if dist < self.InteractDist then
            if IsControlJustPressed(0,38) and (GetGameTimer() - lastKeyTimer) > 150 then
              lastKeyTimer = GetGameTimer()
              self:DoAction(closest)
            end
          end
        else
          if closest.action == "Train" and self.BoxingEvent then
            if self.FighterA or self.FighterB then
              pos = closest.pos
              Utils.DrawText3D(pos.x,pos.y,pos.z, "Press [~r~E~s~] to fight.")
              if IsControlJustPressed(0,38) and (GetGameTimer() - lastKeyTimer) > 150 then
                if not self.InOutfit then
                  ESX.ShowNotification("You must be in your boxing gear for this.")
                else
                  lastKeyTimer = GetGameTimer()
                  if self.FighterA then self:JoinFight("A")
                  else self:JoinFight("B")
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

function MFB:GetClosestAction()
  local plyPed = GetPlayerPed(-1)
  local plyPos = GetEntityCoords(plyPed)
  local closest,closestDist
  for k,v in pairs(self.Markers) do
    local dist = Utils.GetVecDist(plyPos, v.pos)
    if not closestDist or dist < closestDist then
      closestDist = dist
      closest = v
    end
  end
  if closestDist then return closest,closestDist
  else return false,999999
  end
end

MFB.TimesHit = 0
function MFB:JoinFight(fighter)
  local plyPed = GetPlayerPed(-1)
  self.DoingAction = true
  DisableAllControlActions(0)
  self:EnterRing(plyPed)
  if fighter == "A" then
    self:GoToCorner(plyPed,self.PlayerRingLoc,self.OpponentRingLoc)
  elseif fighter == "B" then
    self:GoToCorner(plyPed,self.OpponentRingLoc,self.PlayerRingLoc)
  end
  SetEntityInvincible(GetPlayerPed(-1),false)
  TriggerServerEvent('MF_Boxing:FighterReady')
  while not self.DoFight do Citizen.Wait(0); end
  self:StartRound()
end

function MFB:DoAction(closest)
  if closest.action == "Train" then self:StartTraining(); end
  if closest.action == "Menu" then self:OpenJobMenu(); end
end

function MFB.BeginFight()
  local self = MFB
  if self.FighterA or self.FighterB then 
    self.TimesHit = 0
    self.DoFight = true 
  end
end

function MFB.StartRound()
  local self = MFB
  if not self.FighterA and not self.FighterB then return; end
  ClearPedTasksImmediately(GetPlayerPed(-1))
  ESX.ShowNotification("Fight!")
  self.CurFighting = true
  Citizen.CreateThread(function(...)
    local maxHp = GetEntityMaxHealth(GetPlayerPed(-1))
    while self.CurFighting do
      Citizen.Wait(10)
      if GetEntityHealth(GetPlayerPed(-1)) < maxHp then
        SetEntityHealth(GetPlayerPed(-1),maxHp)
        self.TimesHit = self.TimesHit + 1
      end
    end
    if self.FighterA then
      TriggerServerEvent('MF_Boxing:SubmitScore',"B",self.TimesHit)
      self.TimesHit = 0
    else        
      TriggerServerEvent('MF_Boxing:SubmitScore',"A",self.TimesHit)
      self.TimesHit = 0
    end
  end)
end

function MFB.FinishRound(source,round)
  local self = MFB
  if not self.FighterA and not self.FighterB then return; end
  self.CurFighting = false
  DisableAllControlActions(0)
  ClearPedTasksImmediately(GetPlayerPed(-1))
  ESX.ShowNotification("End Round "..tostring(round))
  local plyPed = GetPlayerPed(-1)
  Citizen.Wait(1000)  
  if self.FighterA then
    self:GoToCorner(plyPed,self.PlayerRingLoc,self.OpponentRingLoc)
  elseif self.FighterB then
    self:GoToCorner(plyPed,self.OpponentRingLoc,self.PlayerRingLoc)
  end
  Citizen.Wait(1000)
  if round+1 <= self.RoundCount then
    ESX.ShowNotification("Get ready for round "..tostring(round+1))
  else
    ESX.ShowNotification("Wait for the judges to draw their decisions.")
  end
end

function MFB.EndEvent(source,winner,prize)
  local self = MFB
  if self.FighterA or self.FighterB then  
    if self.UsingSkelly then
      TriggerEvent('MF_SkeletalSystem:EnableDamage')
    end
    ClearPedTasksImmediately(GetPlayerPed(-1))
    if winner == "A" and self.FighterA then
      ESX.ShowNotification("You won the fight!")
      TriggerServerEvent('MF_Boxing:RewardFighter',prize,"Win")
    elseif winner == "B" and self.FighterB then
      ESX.ShowNotification("You won the fight!")
      TriggerServerEvent('MF_Boxing:RewardFighter',prize,"Win")
    elseif winner == "Draw" then
      ESX.ShowNotification("The fight ended in a draw.")
      TriggerServerEvent('MF_Boxing:RewardFighter',prize,"Draw")
    else
      ESX.ShowNotification("You lost the fight.")
      TriggerServerEvent('MF_Boxing:RewardFighter',prize,"Loser")
    end
  end
  self.DoingAction = false
  self.TimesHit = 0
  self.DoFight = false
  self.BoxingEvent = false
  self.CurFighting = false
  self.FighterA = false
  self.FighterB = false
end

function MFB:OpenJobMenu()
  self.DoingAction = true
  local elements = {}
  elements[1] = {label = "Change Outfit", val = "Outfit"}
  if self.PlayerData.job.grade >= 5 then
    elements[2] = {label = "Hire Fighter", val = "Hire"}
    elements[3] = {label = "Fire Fighter", val = "Fire"}
    elements[4] = {label = "Promote Fighter", val = "Promote"}
    elements[5] = {label = "Demote Fighter", val = "Demote"}
    elements[6] = {label = "Event Actions", val = "Events"}
  end
  ESX.UI.Menu.Open('default', GetCurrentResourceName(), "Job_Menu", { title = "Job Menu", align = 'right', elements = elements }, 
    function(data,menu)
      if data.current.val == "Outfit" then self:HandleOutfit()
      else self:HandleBossActions(data.current.val)
      end
      self.DoingAction = false
      menu.close()      
    end,    
    function(data,menu)
      self.DoingAction = false
      menu.close()
    end
  )
end

function MFB:HandleBossActions(action)
  if action == "Hire" then
    local players = ESX.Game.GetPlayersInArea(GetEntityCoords(GetPlayerPed(-1)), 5.0)
    local nPlayers = {}
    for k,v in pairs(players) do if v ~= PlayerId() then nPlayers[k] = GetPlayerServerId(v); end; end
    ESX.TriggerServerCallback('MF_Boxing:GetPlayerNames', function(retTable)
      local elements = {}
      for k,v in pairs(retTable) do table.insert(elements,{label = v.name, player = v.ped}); end
      ESX.UI.Menu.Open('default', GetCurrentResourceName(), "Hire_Menu", { title = "Hire Fighter", align = 'right', elements = elements }, 
        function(data,menu)
          TriggerServerEvent('MF_Boxing:SetPlayerJob', data.current.player, 'boxer', 0)
          self.DoingAction = false
          menu.close()      
        end,    
        function(data,menu)
          menu.close()
          self.DoingAction = false
        end
      )
    end, nPlayers)
  elseif action == "Fire" then
    local players = ESX.Game.GetPlayersInArea(GetEntityCoords(GetPlayerPed(-1)), 5.0)
    local nPlayers = {}
    for k,v in pairs(players) do if v ~= PlayerId() then nPlayers[k] = GetPlayerServerId(v); end; end
    ESX.TriggerServerCallback('MF_Boxing:GetBoxerNames', function(retTable)
      local elements = {}
      for k,v in pairs(retTable) do table.insert(elements,{label = v.name, player = v.ped}); end
      ESX.UI.Menu.Open('default', GetCurrentResourceName(), "Fire_Menu", { title = "Fire Fighter", align = 'right', elements = elements }, 
        function(data,menu)
          TriggerServerEvent('MF_Boxing:SetPlayerJob', data.current.player, 'unemployed', 0)
          self.DoingAction = false
          menu.close()      
        end,    
        function(data,menu)
          menu.close()
          self.DoingAction = false
        end
      )
    end, nPlayers)
  elseif action == "Promote" then
    local players = ESX.Game.GetPlayersInArea(GetEntityCoords(GetPlayerPed(-1)), 5.0)
    local nPlayers = {}
    for k,v in pairs(players) do if v ~= PlayerId() then nPlayers[k] = GetPlayerServerId(v); end; end
    ESX.TriggerServerCallback('MF_Boxing:GetBoxerNames', function(retTable)
      local elements = {}
      for k,v in pairs(retTable) do table.insert(elements,{label = v.name, player = v.ped, grade = v.grade}); end
      ESX.UI.Menu.Open('default', GetCurrentResourceName(), "Promote_Menu", { title = "Promote Fighter", align = 'right', elements = elements }, 
        function(data,menu)
          TriggerServerEvent('MF_Boxing:SetPlayerJob', data.current.player, 'boxer', data.current.grade + 1)
          self.DoingAction = false
          menu.close()      
        end,    
        function(data,menu)
          menu.close()
          self.DoingAction = false
        end
      )
    end, nPlayers)
  elseif action == "Demote" then
    local players = ESX.Game.GetPlayersInArea(GetEntityCoords(GetPlayerPed(-1)), 5.0)
    local nPlayers = {}
    for k,v in pairs(players) do if v ~= PlayerId() then nPlayers[k] = GetPlayerServerId(v); end; end
    ESX.TriggerServerCallback('MF_Boxing:GetBoxerNames', function(retTable)
      local elements = {}
      for k,v in pairs(retTable) do table.insert(elements,{label = v.name, player = v.ped, grade = v.grade}); end
      ESX.UI.Menu.Open('default', GetCurrentResourceName(), "Demote_Menu", { title = "Demote Fighter", align = 'right', elements = elements }, 
        function(data,menu)
          TriggerServerEvent('MF_Boxing:SetPlayerJob', data.current.player, 'boxer', data.current.grade - 1)
          self.DoingAction = false
          menu.close()      
        end,    
        function(data,menu)
          menu.close()
          self.DoingAction = false
        end
      )
    end, nPlayers)
  elseif action == "Events" then
    local elements = {
      [1] = {label = "Setup Event", val = "Setup"},
      --[2] = {label = "Cancel Event", val = "Cancel"},
    }      
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), "Events_Menu", { title = "Event Actions", align = 'right', elements = elements }, 
      function(data,menu)
        if data.current.val == "Setup" then
          menu.close()    
          self:SetupEvent()
        elseif data.current.val == "Cancel" then
          menu.close()    
          self:CancelEvent()
        end  
      end,    
      function(data,menu)
        menu.close()
        self.DoingAction = false
      end
    )
  end
end

function MFB:SetupEvent()
  if self.BoxingEvent then ESX.ShowNotification("There is currently already an event in place."); return; end
  local players = ESX.Game.GetPlayersInArea(GetEntityCoords(GetPlayerPed(-1)), 5.0)
  local nPlayers = {}
  for k,v in pairs(players) do  nPlayers[k] = GetPlayerServerId(v); end;
  ESX.TriggerServerCallback('MF_Boxing:GetBoxerNames', function(retTable)
    local playerA,playerB
    local elements = {}
    for k,v in pairs(retTable) do table.insert(elements,{label = v.name, player = NetworkGetNetworkIdFromEntity(GetPlayerPed(GetPlayerFromServerId(v.ped))), grade = v.grade}); end
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), "Setup_Event_MenuA", { title = "Setup Event : Select Fighter 1", align = 'right', elements = elements }, 
      function(data,menu)
        playerA = data.current    
        menu.close()
        local foundKey = false
        for k,v in pairs(elements) do if v.label == data.current.label then foundKey = k; end; end
        if foundKey then table.remove(elements,foundKey); end
        ESX.UI.Menu.Open('default', GetCurrentResourceName(), "Setup_Event_MenuB", { title = "Setup Event : Select Fighter B", align = 'right', elements = elements }, 
          function(data,menu)
            playerB = data.current
            menu.close()
            if playerA and playerB then 
              ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'Event_Prize', {title = "Set Event Prize"}, 
                function(data2, menu2)
                  local quantity = tonumber(data2.value)

                  if quantity == nil then
                    ESX.ShowNotification("Invalid amount.")
                  else
                    TriggerServerEvent('MF_Boxing:SetupEvent',quantity,playerA,playerB)
                    menu2.close()     
                    menu.close()
                    self.MenuOpen = false
                  end
                end,
                function(data,menu)
                  menu.close()
                  ESX.UI.Menu.CloseAll()
                  self.MenuOpen = false
                end
              )
            else
              menu.close()
              self.DoingAction = false
            end
          end,    
          function(data,menu)
            menu.close()
            self.DoingAction = false
          end
        )
      end,    
      function(data,menu)
        menu.close()
        self.DoingAction = false
      end
    )

  end, nPlayers)  
end


function MFB.CreateEvent(source,prize,fighterA,fighterB)
  local self = MFB
  self.BoxingEvent = {
    fighterA = fighterA,
    fighterB = fighterB,
    prize = prize,
  }

  if GetPlayerPed(-1) == NetworkGetEntityFromNetworkId(fighterA.player) then
    self.FighterA = true
    self.FighterB = false
  elseif GetPlayerPed(-1) == NetworkGetEntityFromNetworkId(fighterB.player) then
    self.FighterA = false
    self.FighterB = true
  else
    self.FighterA = false
    self.FighterB = false
  end
end


function MFB:CancelEvent()
end

function MFB:SpawnOpponent()  
  local hash = GetHashKey(self.OpponentModel)
  while not HasModelLoaded(hash) do RequestModel(hash); Citizen.Wait(0); end

  local pos = self.OpponentSpawnLoc
  self.Opponent = CreatePed(4,hash, pos.x,pos.y,pos.z, 180.0, true,true)
  Citizen.Wait(1000)
  self:AddGloves(self.Opponent,false)
  SetModelAsNoLongerNeeded(hash)

  local pos = self.DummyPos
  TaskGoStraightToCoord(self.Opponent, pos.x,pos.y,pos.z, 1.0, 1.0, 1.0, 1.0)

  while Utils.GetVecDist(GetEntityCoords(self.Opponent),pos) > 2.55 do Citizen.Wait(0); end

  self:EnterRing(self.Opponent)
  self:GoToCorner(self.Opponent,self.OpponentRingLoc,self.PlayerRingLoc)

  local heading = GetEntityHeading(GetPlayerPed(-1))
  SetEntityHeading(GetPlayerPed(-1),heading)

  return self.Opponent
end

function MFB:StartTraining()
  if not self.InOutfit then ESX.ShowNotification("You need to be in your boxing gear for this."); return; end
  self.IsTraining = true

  DisableAllControlActions(0)

  local plyPed = GetPlayerPed(-1)
  self:EnterRing(plyPed)
  self:GoToCorner(plyPed,self.PlayerRingLoc,self.OpponentRingLoc)
  self.Opponent = self:SpawnOpponent()

  EnableAllControlActions(0)
  ClearPedTasksImmediately(plyPed)
  ClearPedTasksImmediately(self.Opponent)

  TaskCombatPed(self.Opponent,plyPed,0,16)

  local curCount = 1
  local opponentCount = ESX.GetPlayerData().job.grade
  while self.IsTraining do
    Citizen.Wait(10)
    if GetEntityHealth(self.Opponent) <= 99.0 then
      if curCount >= opponentCount then
        self.IsTraining = false
        ESX.ShowNotification("Training complete.")
        Citizen.Wait(1000)
        SetEntityAsMissionEntity(self.Opponent,true,true)
        DeleteEntity(self.Opponent)
        for k,v in pairs(self.OpponentGloves) do
          SetEntityAsMissionEntity(v,true,true)
          DeleteObject(v)
          DeleteEntity(v)
        end
        TriggerServerEvent('MF_Boxing:TrainingComplete')
      else
        curCount = curCount + 1
        DisableAllControlActions(0)
        self:GoToCorner(plyPed,self.PlayerRingLoc,self.OpponentRingLoc)

        DeleteEntity(self.Opponent)
        for k,v in pairs(self.OpponentGloves) do
          SetEntityAsMissionEntity(v,true,true)
          DeleteObject(v)
          DeleteEntity(v)
        end
        self.Opponent = self:SpawnOpponent()

        EnableAllControlActions(0)
        ClearPedTasksImmediately(GetPlayerPed(-1))
        ClearPedTasksImmediately(self.Opponent)

        TaskCombatPed(self.Opponent,GetPlayerPed(-1),0,16)
      end
    end
  end
end

function MFB:EnterRing(ped)
  if not ped then return; end

  if self.UsingSkelly then
    TriggerEvent('MF_SkeletalSystem:PauseDamage')
  end

  local pos = self.RingSideLoc
  TaskGoStraightToCoord(ped, pos.x,pos.y,pos.z, 1.0, 1.0, 1.0, 1.0)

  while Utils.GetVecDist(GetEntityCoords(ped),pos) > 2.55 do Citizen.Wait(0); end
  Citizen.Wait(1000)

  local pos = self.RingInLoc
  local adder = 2
  while Utils.GetVecDist(GetEntityCoords(ped),pos) > 1.5 do
    TaskClimb(ped,false)
    Citizen.Wait(1000 * adder)
    adder = math.min(adder * 2,5)
  end
end

function MFB:GoToCorner(ped,pos,corner)
  if not ped or not pos or not corner then return; end
  TaskGoStraightToCoord(ped, pos.x,pos.y,pos.z, 1.0, 1.0, 1.0, 1.0)  

  while Utils.GetVecDist(GetEntityCoords(ped),pos) > 0.1 do Citizen.Wait(0); end

  local pos = corner
  TaskTurnPedToFaceCoord(GetPlayerPed(-1), pos.x,pos.y,pos.z, -1)
  Citizen.Wait(1000)
end

MFB.Gloves = {}
MFB.OpponentGloves = {}
function MFB:AddGloves(ped,isPlayer)
  local hash = GetHashKey('prop_boxing_glove_01')
  while not HasModelLoaded(hash) do RequestModel(hash); Citizen.Wait(0); end
  local pos = GetEntityCoords(ped)
  local gloveA = CreateObject(hash, pos.x,pos.y,pos.z + 0.50, true,false,false)
  local gloveB = CreateObject(hash, pos.x,pos.y,pos.z + 0.50, true,false,false)
  if not isPlayer then
    table.insert(self.OpponentGloves,gloveA)
    table.insert(self.OpponentGloves,gloveB)
  else
    table.insert(self.Gloves,gloveA)
    table.insert(self.Gloves,gloveB)
  end
  SetModelAsNoLongerNeeded(hash)
  FreezeEntityPosition(gloveA,false)
  SetEntityCollision(gloveA,false,true)
  ActivatePhysics(gloveA)
  FreezeEntityPosition(gloveB,false)
  SetEntityCollision(gloveB,false,true)
  ActivatePhysics(gloveB)
  if not ped then ped = GetPlayerPed(-1); end -- gloveA = L, gloveB = R
  AttachEntityToEntity(gloveA, ped, GetPedBoneIndex(ped, 0xEE4F), 0.05, 0.00,  0.04,     00.0, 90.0, -90.0, true, true, false, true, 1, true) -- object is attached to right hand 
  AttachEntityToEntity(gloveB, ped, GetPedBoneIndex(ped, 0xAB22), 0.05, 0.00, -0.04,     00.0, 90.0,  90.0, true, true, false, true, 1, true) -- object is attached to right hand 
end

function MFB:HandleOutfit()
  if not self.OldOutfit then
    self.OldOutfit = {}
    TriggerEvent('skinchanger:getSkin', function(skin)
      for k,v in pairs(skin) do self.OldOutfit[k] = v; end
    end)
    TriggerEvent('skinchanger:loadSkin', self.MaleOutfit)
    self:AddGloves(GetPlayerPed(-1),true)
    self.InOutfit = true
  else
    TriggerEvent('skinchanger:loadSkin', self.OldOutfit)
    self:RemoveGloves()
    self.InOutfit = false
    self.OldOutfit = false
  end
  self.DoingAction = false
end

function MFB:RemoveGloves()
  for k,v in pairs(self.Gloves) do DeleteObject(v); end
end

function MFB:DoBlips()
  for k,v in pairs(self.Blips) do
    if not v.job or self.PlayerData.job.name == v.job then
      local blip = AddBlipForCoord(v.pos.x,v.pos.y,v.pos.z)
      SetBlipSprite               (blip, v.sprite)
      SetBlipDisplay              (blip, 3)
      SetBlipScale                (blip, 1.0)
      SetBlipColour               (blip, v.col)
      SetBlipAsShortRange         (blip, false)
      SetBlipHighDetail           (blip, true)
      BeginTextCommandSetBlipName ("STRING")
      AddTextComponentString      (v.title)
      EndTextCommandSetBlipName   (blip)
    end
  end
end

function MFB.SetJob(source,job)
  local self = MFB
  self.PlayerData.job = job
  self:DoBlips()
end

function MFB.PlaySound(source,playerId,radius,sound,volume)
  local plyPed = GetPlayerPed(-1)
  local tarPed = NetworkGetEntityFromNetworkId(playerId)
  local dist = Utils.GetVecDist(GetEntityCoords(plyPed),GetEntityCoords(tarPed))
  if dist and dist < radius then
    TriggerEvent('InteractSound_CL:PlayOnOne', sound, volume)
  elseif dist and dist < (radius*1.5) then      
    TriggerEvent('InteractSound_CL:PlayOnOne', sound, volume/1.5)
  elseif dist and dist < (radius*2.0) then      
    TriggerEvent('InteractSound_CL:PlayOnOne', sound, volume/2.0)
  elseif dist and dist < (radius*2.5) then      
    TriggerEvent('InteractSound_CL:PlayOnOne', sound, volume/2.5)
  end
end

NewEvent(true,MFB.CreateEvent,'MF_Boxing:CreateEvent')
NewEvent(true,MFB.BeginFight,'MF_Boxing:BeginFight')
NewEvent(true,MFB.FinishRound,'MF_Boxing:FinishRound')
NewEvent(true,MFB.StartRound,'MF_Boxing:StartRound')
NewEvent(true,MFB.EndEvent,'MF_Boxing:EndEvent')
NewEvent(true,MFB.SetJob,'esx:setJob')
NewEvent(true,MFB.PlaySound,'MF_Boxing:PlaySound')

Citizen.CreateThread(function(...) MFB:Awake(...); end)