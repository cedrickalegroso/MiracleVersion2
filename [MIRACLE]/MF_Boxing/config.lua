--ModFreakz
--For more mods, head to : https://discord.gg/ukgQa5K

MF_Boxer = {}
local MFB = MF_Boxer

MFB.Version = '1.0.11'

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj; end)
Citizen.CreateThread(function(...)
  while not ESX do 
    TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj; end) 
    Citizen.Wait(0)
  end
end)

MFB.JobName = "boxer"
MFB.JobTitle = "Boxer"
MFB.ShowBlips = true

MFB.InteractDist = 1.0
MFB.DrawTextDist = 10.0
MFB.UsingSkelly = true

MFB.RingSideLoc = vector3(-34.99,-1230.97,30.06)
MFB.RingInLoc = vector3(-31.98,-1230.80,30.06)
MFB.PlayerRingLoc = vector3(-33.88,-1228.94,30.06)
MFB.OpponentRingLoc = vector3(-29.66,-1233.18,30.06)
MFB.OpponentSpawnLoc = vector3(-43.76,-1246.45,29.33)
MFB.DummyPos = vector3(-40.78,-1232.39,29.33)
MFB.OpponentModel = 'a_m_y_runner_01'

MFB.RewardTraining = true -- should we reward the player for completing training?
MFB.TrainingReward = 100 -- per opponent defeated

MFB.RoundTime = 0.5 -- minutes
MFB.RoundCount = 4 -- rounds : min recommended >= 2 else bugs
MFB.BreakTime = 10 -- seconds

MFB.Blips = {
  [1] = {
    pos = vector3(-33.46,-1222.09,29.33),
    sprite = 409,
    col = 1,
    title = 'Boxing Gym',
    job = "boxer",
  },
}

MFB.Markers = {
  [1] = {
    pos = vector3(-43.64,-1231.48,29.40),
    text = "Press [~r~E~s~] to open the menu.",
    action = "Menu",
  },
  [2] = {
    pos = vector3(-37.9,-1231.26,29.33),
    text = "Press [~r~E~s~] to train.",
    action = "Train",
  },
}

MFB.MaleOutfit = {["moles_2"]=0,[".*"]=-1,["lipstick_3"]=0,["chest_3"]=0,["arms_2"]=0,["bodyb_1"]=0,["watches_1"]=-1,["chain_2"]=0,["complexion_2"]=0,["arms"]=15,["bags_1"]=0,["lipstick_1"]=0,["makeup_4"]=0,["bproof_1"]=0,["skin"]=0,["chain_1"]=0,["makeup_2"]=0,["blush_2"]=0,["bodyb_2"]=0,["lipstick_4"]=0,["shoes_1"]=34,["face"]=0,["chest_1"]=0,["mask_2"]=0,["sun_1"]=0,["tshirt_2"]=0,["bracelets_1"]=-1,["watches_2"]=0,["bproof_2"]=0,["tshirt_1"]=15,["helmet_1"]=-1,["decals_1"]=0,["age_2"]=0,["lipstick_2"]=0,["blemishes_2"]=0,["makeup_1"]=0,["blemishes_1"]=0,["moles_1"]=0,["torso_1"]=91,["decals_2"]=0,["torso_2"]=0,["pants_1"]=16,["age_1"]=0,["blush_1"]=0,["helmet_2"]=0,["bracelets_2"]=0,["blush_3"]=0,["sex"]=0,["complexion_1"]=0,["bags_2"]=0,["chest_2"]=0,["pants_2"]=0,["shoes_2"]=0,["makeup_3"]=0,["sun_2"]=0,["mask_1"]=0}

