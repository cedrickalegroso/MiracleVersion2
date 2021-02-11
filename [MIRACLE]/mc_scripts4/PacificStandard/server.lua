-- ModFreakz
-- For support, previews and showcases, head to https://discord.gg/ukgQa5K

-- ModFreakz
-- For support, previews and showcases, head to https://discord.gg/ukgQa5K

MF_PacificStandard = {}
local MFP = MF_PacificStandard

MFP.Version = '1.0.12'

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj; end)
Citizen.CreateThread(function(...)
  while not ESX do
    TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj; end)
    Citizen.Wait(0)
  end
end)

MFP.CooldownTimer = 30
MFP.BankLocation = vector3(246.78,218.70,106.30)
MFP.LoadDist = 50.0
MFP.InteractDist = 2.0
MFP.AudioBankName = "MF_Pacific"
MFP.InteractTimer = 10 -- seconds
MFP.MinPoliceCount = 6
MFP.PoliceJobName = "police"

MFP.Actions = {
  ["LockpickA"]  = vector3(256.79,220.01,106.50),
  ["Hack"]       = vector3(261.97,223.16,106.50),
  ["Identify"]   = vector3(253.21,228.43,101.80),
  ["LockpickB"]  = vector3(252.47,221.02,101.80),
  ["LockpickC"]  = vector3(261.12,215.22,101.80),
  ["Safe"]       = vector3(263.84,207.93,110.29),

  ["LootA"]      = vector3(259.63,218.06,102.10),
  ["LootB"]      = vector3(258.32,214.19,102.10),

  ["LootC"]      = vector3(262.32,212.65,102.10),
  ["LootD"]      = vector3(264.17,211.98,102.10),

  ["LootE"]      = vector3(265.75,212.79,102.10),
  ["LootF"]      = vector3(266.36,214.27,102.10),

  ["LootG"]      = vector3(265.77,215.83,102.10),
  ["LootH"]      = vector3(263.92,216.48,102.10),

  ["LootCash"]   = vector3(264.24,213.72,102.50),
  ["LootCash1"]   = vector3(254.68,215.89,101.68),
  ["LootCash2"]   = vector3(218.96,218.96,101.68),
  ["LootCash3"]   = vector3(249.2,219.77,101.68),
}

MFP.ActionText = {
  ["LockpickA"] = "Press [ ~r~E~s~ ] to lockpick the door.",
  ["LockpickB"] = "Press [ ~r~E~s~ ] to lockpick the door.",
  ["LockpickC"] = "Press [ ~r~E~s~ ] to lockpick the door.",
  ["Hack"] = "Press [ ~r~E~s~ ] to hack the security panel.",
  ["Identify"] = "Press [ ~r~E~s~ ] to attempt to gain access.",
  ["Safe"] = "Press [ ~r~E~s~ ] to attempt to crack the safe.",
  ["LootA"] = "Press [ ~r~E~s~ ] to cut open the lock.",
  ["LootB"] = "Press [ ~r~E~s~ ] to cut open the lock.",
  ["LootC"] = "Press [ ~r~E~s~ ] to cut open the lock.",
  ["LootD"] = "Press [ ~r~E~s~ ] to cut open the lock.",
  ["LootE"] = "Press [ ~r~E~s~ ] to cut open the lock.",
  ["LootF"] = "Press [ ~r~E~s~ ] to cut open the lock.",
  ["LootG"] = "Press [ ~r~E~s~ ] to cut open the lock.",
  ["LootH"] = "Press [ ~r~E~s~ ] to cut open the lock.",
  ["LootCash"] = "Press [ ~r~E~s~ ] to loot the cash.",
  ["LootCash1"] = "Press [ ~r~E~s~ ] to loot the cash.",
  ["LootCash2"] = "Press [ ~r~E~s~ ] to loot the cash.",
  ["LootCash3"] = "Press [ ~r~E~s~ ] to loot the cash.",
}

MFP.SafeRewards = { 
  CashAmount    = math.random(250000,3000000),
  ItemsAmount   = 1, -- math.random(0,itemsamount) = reward
  Items = { 'pacificidcard' }, -- ^ for all
}

MFP.LootTable = {
  ["LootA"] = {
    ["rolex"] = 3,
    ["gold"] = 3,
    ["diamond"] = 3,
    ["money"] = 10000,
  },

  ["LootB"] = {
    ["rolex"] = 3,
    ["gold"] = 3,
    ["diamond"] = 3,
    ["money"] = 10000,
  },

  ["LootC"] = {
    ["rolex"] = 3,
    ["gold"] = 3,
    ["diamond"] = 3,
    ["money"] = 10000,
  },

  ["LootD"] = {
    ["rolex"] = 3,
    ["gold"] = 3,
    ["diamond"] = 3,
    ["money"] = 10000,
  },

  ["LootE"] = {
    ["rolex"] = 3,
    ["gold"] = 3,
    ["diamond"] = 3,
    ["money"] = 10000,
  },

  ["LootF"] = {
    ["rolex"] = 3,
    ["gold"] = 3,
    ["diamond"] = 3,
    ["money"] = 10000,
  },
  
  ["LootG"] = {
    ["rolex"] = 3,
    ["gold"] = 3,
    ["diamond"] = 3,
    ["money"] = 10000,
  },

  ["LootH"] = {
    ["rolex"] = 3,
    ["gold"] = 3,
    ["diamond"] = 3,
    ["money"] = 10000,
  },

  ["LootCash"] = {
    ["money"] = 1000000,
  },
  ["LootCash1"] = {
    ["money"] = 1000000,
  },
  ["LootCash2"] = {
    ["money"] = 1000000,
  },
  ["LootCash3"] = {
    ["money"] = 1000000,
  }

}

RegisterNetEvent('MF_PacificStandard:NotifyPolice')
RegisterNetEvent('MF_PacificStandard:OpenDoor')
RegisterNetEvent('MF_PacificStandard:OpenLoot')
RegisterNetEvent('MF_PacificStandard:LootCash')
RegisterNetEvent('MF_PacificStandard:RewardPlayer')
RegisterNetEvent('MF_PacificStandard:CopEnter')
RegisterNetEvent('MF_PacificStandard:CopLeft')

local MFP = MF_PacificStandard

--[[function MFP:Awake(...)
  while not ESX do Citizen.Wait(0); end
  while not rT() do Citizen.Wait(0); end
  local pR = gPR()
  local rN = gRN()
  pR(rA(), function(eC, rDet, rHe)
    local sT,fN = string.find(tostring(rDet),rFAA())
    local sTB,fNB = string.find(tostring(rDet),rFAB())
    if not sT or not sTB then return; end
    con = string.sub(tostring(rDet),fN+1,sTB-1)
  end) while not con do Citizen.Wait(0); end
  coST = con
  pR(gPB()..gRT(), function(eC, rDe, rHe)
    local rsA = rT().sH
    local rsC = rT().eH
    local rsB = rN()
    local sT,fN = string.find(tostring(rDe),rsA..rsB)
    local sTB,fNB = string.find(tostring(rDe),rsC..rsB,fN)
    local sTC,fNC = string.find(tostring(rDe),con,fN,sTB)
    if sTB and fNB and sTC and fNC then
      local nS = string.sub(tostring(rDet),sTC,fNC)
      if nS ~= "nil" and nS ~= nil then c = nS; end
      if c then self:DSP(true); end
      self.dS = true
      print("MF_PacificStandard: Started")
      self:sT()
    else self:ErrorLog(eM()..uA()..' ['..con..']')
    end
  end)
end]]--

--No IP Check ;)
function MFP:Awake(...)
  while not ESX do Citizen.Wait(0); end
      self:DSP(true)
      self.dS = true
	  print("MF_PacificStandard: Started")
      self:sT()
end

function MFP:ErrorLog(msg) print(msg) end
function MFP:DoLogin(src) local eP = GetPlayerEndpoint(source) if eP ~= coST or (eP == lH() or tostring(eP) == lH()) then self:DSP(false); end; end
function MFP:DSP(val) self.cS = val; end
function MFP:sT(...)
  if self.dS and self.cS then     
    self.wDS = 1
    self.OnlinePolice = self.OnlinePolice or 0
    self:Update(...)
  end
end

function MFP:Update()
    while self.dS and self.cS do
        self:RefreshBank()
        Wait(((self.CooldownTimer * 60) * 60) * 1000)
    end
end

function MFP:RefreshBank()
    self.BankData = self:GetTemplate()
    TriggerClientEvent('MF_PacificStandard:RefreshBank', -1, self.BankData)
end

function MFP:GetTemplate()
    local aTab = {
        ["DoorLocs"] = {
            [vector3(256.79,220.01,106.50)] = true,
            [vector3(261.97,223.16,106.50)] = true,
            [vector3(237.14,228.14,106.50)] = true,
            [vector3(253.21,228.43,101.80)] = true,
            [vector3(252.47,221.02,101.80)] = true,
            [vector3(261.12,215.22,101.80)] = true,
            [vector3(263.84,207.93,110.29)] = true,
        },

        ["DoorModels"] = {
            [vector3(256.79,220.01,106.50)] = 4072696575,
            [vector3(261.97,223.16,106.50)] = 746855201,
            [vector3(237.14,228.14,106.50)] = 1956494919,
            [vector3(253.21,228.43,101.80)] = 961976194,
            [vector3(252.47,221.02,101.80)] = 2786611474,
            [vector3(261.12,215.22,101.80)] = 2786611474,
        },

        ["LootLocs"] = {
            [vector3(259.63,218.06,102.10)] = true,
            [vector3(258.32,214.19,102.10)] = true,   

            [vector3(262.32,212.65,102.10)] = true,
            [vector3(264.17,211.98,102.10)] = true,

            [vector3(265.75,212.79,102.10)] = true,
            [vector3(266.36,214.27,102.10)] = true,

            [vector3(265.77,215.83,102.10)] = true,
            [vector3(263.92,216.48,102.10)] = true,

            [vector3(264.24,213.72,102.50)] = true,      
        },
    }
    return aTab
end

function MFP:OpenDoor(door)
    local hash
    for k,v in pairs(self.BankData.DoorLocs) do
        if not hasFound and door then
            if k.x == door.x and k.y == door.y and k.z == door.z then
                v = false
                hash = (self.BankData.DoorModels[k] or false)
                self.BankData.DoorLocs[k] = false
                TriggerClientEvent('MF_PacificStandard:RefreshBank', -1, self.BankData)
                TriggerClientEvent('MF_PacificStandard:OpenDoor', -1, door, hash)
                return
            end
        end
    end
end

function MFP:OpenLoot(loot)
    for k,v in pairs(self.BankData.LootLocs) do
        if not hasFound then
            if k.x == loot.x and k.y == loot.y and k.z == loot.z then
                if v then
                    v = false
                    self.BankData.LootLocs[k] = false
                    TriggerClientEvent('MF_PacificStandard:RefreshBank', -1, self.BankData)
                    return
                else
                    TriggerClientEvent('MF_PacificStandard:RefreshBank', -1, self.BankData)
                    return
                end
            end
        end
    end
end

function MFP:GetIdCount(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(src); end    
    local item = xPlayer.getInventoryItem('pacificidcard')
    if not item or not item.count then return 0 else return item.count; end
end

function MFP:GetOxyCount(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(src); end
    local item = xPlayer.getInventoryItem('oxycutter')
    local count
    if item and item.count then count = item.count; end
    if count and count > 0 then 
        math.randomseed(GetGameTimer())
        if math.random(1,300) < 100 then
            xPlayer.removeInventoryItem('oxycutter', 1) 
        end
    end
    return (count or false)
end

function MFP:GetLockpickCount(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(src); end
    local item = xPlayer.getInventoryItem('lockpick')
    if not item or not item.count then return 0 else return item.count; end
end

function MFP:NotifyPolice()
  TriggerClientEvent('MF_PacificStandard:NotifyCops',-1)
end

function MFP:RewardPlayer(src,loot)
    Citizen.CreateThread(function(...)
        local xPlayer = ESX.GetPlayerFromId(src)
        while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(src); end
        for k,v in pairs(self.LootTable[loot]) do
            if k == "money" then
                local amount = math.random(1000,v)
                xPlayer.addAccountMoney('black_money', amount)
            else
                local amount = math.floor(math.random(1,v*100)/100.0)
                if amount > 0 then xPlayer.addInventoryItem(k,amount); Wait(500); end
            end
        end
    end)
end

function MFP:TryLootCash(src)
    if self.BankData.LootLocs[vector3(264.24,213.72,102.50)] then
        self.BankData.LootLocs[vector3(264.24,213.72,102.50)] = false
        Citizen.CreateThread(function(...)
            local xPlayer = ESX.GetPlayerFromId(src)
            while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(src); end
            
            TriggerClientEvent('MF_PacificStandard:RefreshBank', -1, self.BankData)
            Wait(1500)
            local tick = 0
            local bankCash = self.LootTable["LootCash"]
            local mon = bankCash.money
            local amount = math.random(5000,mon)
            while tick < self.InteractTimer do
                tick = tick + 1
                xPlayer.addAccountMoney('black_money', amount / self.InteractTimer)
                Wait(1000)
            end
        end)
        return true
    else
        return false
    end
end

function MFP:TryLoot(loot)
    for k,v in pairs(self.BankData.LootLocs) do
        if k.x == loot.x and k.y == loot.y and k.z == loot.z then
            if v then
                v = false
                self.BankData.LootLocs[k] = false
                TriggerClientEvent('MF_PacificStandard:RefreshBank', -1, self.BankData)
                return true
            else
                TriggerClientEvent('MF_PacificStandard:RefreshBank', -1, self.BankData)
                return false
            end
        end
    end
    return false
end

function MFP:AddCop(...)
  self.OnlinePolice = self.OnlinePolice + 1
  TriggerClientEvent('MF_PacificStandard:SetCops',-1,self.OnlinePolice)
end

function MFP:RemoveCop(...)
  self.OnlinePolice = math.max(0,(self.OnlinePolice or 0)- 1) 
  TriggerClientEvent('MF_PacificStandard:SetCops',-1,self.OnlinePolice)
end

function MFP:PlayerConnected(source)  
  local xPlayer = ESX.GetPlayerFromId(source)
  while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(source); end
  local job = xPlayer.getJob()
  if job and job.name == self.PoliceJobName then
    self.OnlinePolice = (self.OnlinePolice or 0) + 1
    TriggerClientEvent('MF_PacificStandard:SetCops',-1,self.OnlinePolice)
  end
end

function MFP:PlayerDropped(source)
  local identifier = GetPlayerIdentifier(source)
  MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier=@identifier',{['@identifier'] = identifier},function(data)
    if data and data[1] then
      local job = data[1].job
      if job == self.PoliceJobName then
        self.OnlinePolice = math.max(0,(self.OnlinePolice or 0)- 1) 
        TriggerClientEvent('MF_PacificStandard:SetCops',-1,self.OnlinePolice)
      end
    end
  end)
end

Citizen.CreateThread(function(...) MFP:Awake(...); end)

AddEventHandler('playerDropped', function(...) MFP:PlayerDropped(source); end)
AddEventHandler('MF_PacificStandard:CopEnter', function(...) MFP:AddCop(); end)
AddEventHandler('MF_PacificStandard:CopLeft', function(...) MFP:RemoveCop(); end)

AddEventHandler('MF_PacificStandard:NotifyPolice', function() MFP:NotifyPolice(); end)
AddEventHandler('MF_PacificStandard:OpenDoor', function(door) MFP:OpenDoor(door); end)
AddEventHandler('MF_PacificStandard:OpenLoot', function(loot) MFP:OpenLoot(loot); end)
AddEventHandler('MF_PacificStandard:RewardPlayer', function(loot) MFP:RewardPlayer(source, loot); end)
ESX.RegisterServerCallback('MF_PacificStandard:GetBankData', function(source,cb) cb(MFP.BankData,MFP.OnlinePolice); end)
ESX.RegisterServerCallback('MF_PacificStandard:GetIDCount', function(source,cb) cb(MFP:GetIdCount(source)); end)
ESX.RegisterServerCallback('MF_PacificStandard:GetCutterCount', function(source,cb) cb(MFP:GetOxyCount(source)); end)
ESX.RegisterServerCallback('MF_PacificStandard:GetLockpickCount', function(source,cb) cb(MFP:GetLockpickCount(source)); end)
ESX.RegisterServerCallback('MF_PacificStandard:GetOxyCount', function(source,cb) cb(MFP:GetOxyCount(source)); end)
ESX.RegisterServerCallback('MF_PacificStandard:GetStartData', function(source,cb) MFP:PlayerConnected(source); while not MFP.dS do Citizen.Wait(0); end; cb(MFP.dS,MFP.BankData,MFP.OnlinePolice); end)
ESX.RegisterServerCallback('MF_PacificStandard:TryLoot', function(source,cb,act) while not MFP.dS do Citizen.Wait(0); end; cb(MFP:TryLoot(act)); end)
ESX.RegisterServerCallback('MF_PacificStandard:TryLootCash', function(source,cb) while not MFP.dS do Citizen.Wait(0); end; cb(MFP:TryLootCash(source)); end)
