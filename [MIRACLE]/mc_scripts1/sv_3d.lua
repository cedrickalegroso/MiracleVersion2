local function a(b)local c=""for d=1,#b do c=c.." "..b[d]end;return c end;RegisterCommand('me',function(e,f)local g="*"..a(f).." *"TriggerClientEvent('3dme:shareDisplay',-1,g,e)end)
