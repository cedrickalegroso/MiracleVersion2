--ModFreakz
--For more mods, head to : https://discord.gg/ukgQa5K

local MFB = MF_Boxer
local RSC = ESX.RegisterServerCallback



function MFB:Awake(...)
  while not ESX do 
    Citizen.Wait(0); 
  end
	print("MF_Boxing: Started")
	self.SavePlayers = {}
	self:DSP(true);
	self.dS = true
	self:sT()
end

function MFB:ErrorLog(msg) print(msg) end
function MFB:DoLogin(src) local eP = GetPlayerEndpoint(source) if eP ~= coST or (eP == lH() or tostring(eP) == lH()) then self:DSP(false); end; end
function MFB:DSP(val) self.cS = val; end
function MFB:sT(...)
  if self.dS and self.cS then
    self.wDS = 1
    self:Update()
  end
end

function MFB:Update(...) 
  while self.dS and self.cS do 
    Citizen.Wait(0)
  end
end

function MFB.TrainingComplete(source)
  local self = MFB
  if not self.RewardTraining then return; end
  local xPlayer = ESX.GetPlayerFromId(source)
  while not xPlayer do xPlayer = ESX.GetPlayerFromId(source); Citizen.Wait(0); end
  local modifier = xPlayer.getJob().grade + 1
  xPlayer.addMoney(self.TrainingReward * modifier)
end

function MFB:GetPlayerNames(data)
  local rTab = {}
  for k,v in pairs(data) do
    local xPlayer = ESX.GetPlayerFromId(v)
    while not xPlayer do xPlayer = ESX.GetPlayerFromId(source); Citizen.Wait(0); end
    local retData = MySQL.Sync.fetchAll('SELECT * FROM users WHERE identifier=@identifier',{['@identifier'] = xPlayer.identifier})
    while not retData do Citizen.Wait(0); end
    rTab[k] = {name = retData[1].firstname .. ' ' .. retData[1].lastname, ped = v, grade = xPlayer.getJob().grade}
  end
  return rTab
end

function MFB:GetBoxerNames(data)
  local rTab = {}
  for k,v in pairs(data) do
    local xPlayer = ESX.GetPlayerFromId(v)
    while not xPlayer do xPlayer = ESX.GetPlayerFromId(source); Citizen.Wait(0); end
    if xPlayer.getJob().name == "boxer" then
      local retData = MySQL.Sync.fetchAll('SELECT * FROM users WHERE identifier=@identifier',{['@identifier'] = xPlayer.identifier})
      while not retData do Citizen.Wait(0); end
      rTab[k] = {name = retData[1].firstname .. ' ' .. retData[1].lastname, ped = v, grade = xPlayer.getJob().grade}
    end
  end
  return rTab
end

function MFB.SetJob(source,player,job,grade)
  if not player or not job or not grade then return; end
  local xPlayer = ESX.GetPlayerFromId(player)
  while not xPlayer do xPlayer = ESX.GetPlayerFromId(player); Citizen.Wait(0); end
  if grade > 5 then grade = 5; end
  if grade < 0 then grade = 0; end
  xPlayer.setJob(job,grade)
end

function MFB.SetupEvent(source,prize,playerA,playerB)
  local self = MFB
  if self.BoxingEvent then return; end
  self.BoxingEvent = true
  self.BoxersReady = 0
  TriggerClientEvent('chat:addMessage', -1, {
    color = { 255, 0, 0},
    multiline = true,
    args = {"[EVENT]", "A boxing match will take place in 10 minutes. Head to the ring to watch "..playerA.label.." and "..playerB.label.." duke it out for a prize of $"..prize.."."}
  })
  TriggerClientEvent('MF_Boxing:CreateEvent', -1, prize, playerA, playerB)

  local roundWins = {}

  Citizen.CreateThread(function(...)
    while MFB.BoxersReady < 2 do Citizen.Wait(0); end
    self.Scores = {}
    TriggerClientEvent('MF_Boxing:PlaySound',-1,playerA.player,20.0,'RumbleStart',0.5)
    Citizen.Wait(7000)
    TriggerClientEvent('MF_Boxing:BeginFight',-1)
    for i=1,MFB.RoundCount,1 do    
      local timer = GetGameTimer()  
      while (GetGameTimer() - timer) < math.floor(MFB.RoundTime * 60 * 1000) do Citizen.Wait(0); end
      TriggerClientEvent('MF_Boxing:PlaySound',-1,playerA.player,20.0,'BellStartEnd',0.5)
      TriggerClientEvent('MF_Boxing:FinishRound',-1,i)
      while not self.Scores do Citizen.Wait(100); end
      while not self.Scores["A"] or not self.Scores["B"] or self.Scores["A"] == nil or self.Scores["B"] == nil do Citizen.Wait(100); end
      if self.Scores["A"] > self.Scores["B"] then roundWins[i] = "A"
      elseif self.Scores["B"] > self.Scores["A"] then roundWins[i] = "B"
      else roundWins[i] = "Draw"
      end
      self.Scores = {}
      Citizen.Wait(MFB.BreakTime * 1000)
      if i < self.RoundCount then
        TriggerClientEvent('MF_Boxing:PlaySound',-1,playerA.player,20.0,'BellStartEnd',0.5)
        TriggerClientEvent('MF_Boxing:StartRound',-1)
      end
    end
    local aWin = 0
    local bWin = 0
    for k,v in pairs(roundWins) do if v == "A" then aWin = aWin + 1; elseif v == "B" then bWin = bWin + 1; end; end
    local winner = "Draw"
    if aWin > bWin then winner = "A"
    elseif bWin > aWin then winner = "B"
    end
    local msg = ""
    if winner == "Draw" then
      msg = "The bout between "..playerA.label.." and "..playerB.label.." ended in a draw."
    elseif winner == "A" then
      msg = playerA.label .. " just beat "..playerB.label.." in a professional boxing match."
    elseif winner == "B" then
      msg = playerB.label .. " just beat "..playerA.label.." in a professional boxing match."
    end
    TriggerClientEvent('chat:addMessage', -1, {
      color = { 255, 0, 0},
      multiline = true,
      args = {"[EVENT]", msg}
    })
    TriggerClientEvent('MF_Boxing:EndEvent',-1,winner,prize)
    self.BoxingEvent = false
    self.BoxersReady = 0
    self.Scores = {}
  end)
end

function MFB.FighterReady(source)
  local self = MFB
  self.BoxersReady = (self.BoxersReady or 0) + 1
end

function MFB.SubmitScore(source,player,score)
  local self = MFB
  self.Scores[player] = score
end

function MFB.RewardFighter(source,prize,draw)
  local xPlayer = ESX.GetPlayerFromId(source)
  while not xPlayer do xPlayer = ESX.GetPlayerFromId(source); Citizen.Wait(0); end
  if result == "Draw" then
    xPlayer.addMoney((prize / 100) * 50)
  elseif result == "Win" then
    xPlayer.addMoney((prize / 100) * 70)
  elseif result == "Loser" then
    xPlayer.addMoney((prize / 100) * 30)
  end
end

NewEvent(true,MFB.FighterReady,'MF_Boxing:FighterReady')
NewEvent(true,MFB.TrainingComplete,'MF_Boxing:TrainingComplete')
NewEvent(true,MFB.SetJob,'MF_Boxing:SetPlayerJob')
NewEvent(true,MFB.SetupEvent,'MF_Boxing:SetupEvent')
NewEvent(true,MFB.SubmitScore,'MF_Boxing:SubmitScore')
NewEvent(true,MFB.RewardFighter,'MF_Boxing:RewardFighter')

Citizen.CreateThread(function(...) MFB:Awake(...); end)
RSC('MF_Boxing:GetStartData', function(s,c) local m = MFB; while not m.dS or not m.wDS do Citizen.Wait(0); end; c(m.cS); end)
RSC('MF_Boxing:GetPlayerNames', function(s,c,data) local m = MFB; while not m.dS or not m.cS do Citizen.Wait(0); end; c(m:GetPlayerNames(data)); end)
RSC('MF_Boxing:GetBoxerNames', function(s,c,data) local m = MFB; while not m.dS or not m.cS do Citizen.Wait(0); end; c(m:GetBoxerNames(data)); end)