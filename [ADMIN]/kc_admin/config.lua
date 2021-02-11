
Groups = {}
Permissions = {}
Lang = {}
Lang.Global = {}
Config = {}

-- Config --

Config.AmbulanceJob = true

Config.WarnPerma = 10
Config.WarnWeek = 6
Config.WarnDays = 3

Config.Jails = {
    {x = 1641.64, y = 2571.08, z = 45.56},
    {x = 1651.03, y = 2570.78, z = 45.56}
}
Config.ExitFromJail = {["x"] = 1873.51, ["y"] = 2600.2, ["z"] = 45.67}
Config.MaxJailDistance = 20
Config.JailWarns = 2
Config.JailWarnsMinutes = 20

Config.CheckJobType = "false" -- esx/sql/false
Config.DefaultJob = {"unemployed", 0}

Config.SecurityCode = "674521"

-- Config --


Groups.Server       = "server" -- Comandos ejecutados desde el servidor
Groups.SuperAdmin   = "superadmin" -- Mas alto
Groups.Admin        = "admin"
Groups.Mod          = "moderator"
Groups.Helper       = "helper"
Groups.User         = "user" -- Mas bajo


Groups.Levels = {[Groups.User] = 0, [Groups.Helper] = 1, [Groups.Mod] = 2, [Groups.Admin] = 3, [Groups.SuperAdmin] = 4, [Groups.Server] = 5}

-- Establecer los permisos de menos nivel a mas nivel --

-- Permisos --

Permissions.OpenMenu        = {Groups.Mod, Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.GetWarns        = {Groups.Mod, Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Warn            = {Groups.Mod, Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.DeleteWarn      = {Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Kick            = {Groups.Mod, Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Ban             = {Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.GetBans         = {Groups.SuperAdmin, Groups.Server}
Permissions.Bring           = {Groups.Mod, Groups.SuperAdmin, Groups.Admin, Groups.Server}
Permissions.Goto            = {Groups.Mod, Groups.SuperAdmin,  Groups.Admin, Groups.Server}
Permissions.Return          = {Groups.Mod, Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Noclip          = {Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Visibility      = {Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Slay            = {Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Revive          = {Groups.Mod, Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Freeze          = {Groups.Mod, Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Jail            = {Groups.Mod, Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.UnJail          = {Groups.Admin, Groups.SuperAdmin, Groups.Server}
Permissions.Money           = {Groups.SuperAdmin, Groups.Server}
Permissions.Jobs            = { Groups.SuperAdmin, Groups.Server}
Permissions.Group           = { Groups.SuperAdmin, Groups.Server}
Permissions.Report          = {Groups.Mod, Groups.Admin, Groups.SuperAdmin}

-- Permisos --

-- Lenguaje --

Lang.Error                      = "Error"
Lang.Success                    = "Parking"
Lang.Minutes                    = "minutes"
Lang.Plus                       = "but"

Lang.Kicked                     = "You have successfully kicked "
Lang.BannedSuccessfully         = "User successfully banned"
Lang.Warn                       = "Warn correctly applied to "
Lang.WarnDeleted                = "Warn successfully removed by "
Lang.UnBan                      = "Se ha eliminado la restricción"
Lang.ReturnPlayer               = " The restriction has been removed"
Lang.NoclipOn                   = " The noclip has been ^2activated^0 "
Lang.NoclipOff                  = "The noclip has been ^1deactivated^0 "
Lang.Noclip                     = "Noclip has been issued / released to: "
Lang.Slay                       = "You have died mysteriously;)"
Lang.Revive                     = "You have risen from the dead"
Lang.FreezeMsg                  = "You have been  ^1frozen^0"
Lang.UnFreezeMsg                = "You have been  ^2thawed^0"
Lang.Warned                     = " ^1He has applied a warn for: "
Lang.WarnAccumulation           = "Accumulation of warns. Warns: "
Lang.BannedFor                  = "Banned by: %s | Expiration date: %s | Applied by: %s"
Lang.PermaBan                   = "Banned by: %s | Expiration date: Never | Applied by: %s"
Lang.Banned                     = "Banned"
Lang.Bringed                    = "You have been teleported to "
Lang.Goto                       = " has teleported to you"
Lang.GotoN                      = "You have been teleported to "
Lang.Return                     = "The player has been returned to his previous location"
Lang.Visibility                 = "Player is visible / invisible to players"
Lang.Slay                       = "The player died in strange circumstances"
Lang.ReviveN                    = "Player has been healed and revived"
Lang.Freeze                     = "The player has been frozen / thawed correctly"
Lang.JailError                  = "The player has not been locked up due to an internal error"
Lang.UnJail                     = "The player has been released from his sentence"
Lang.UnjailError                = "Player has not been released due to internal error"
Lang.Jailed                     = "You've been locked up by "
Lang.UnJailed                   = " You have served your sentence^0. Do not ^1ie^0  it anymore"
Lang.Jail                       = "The player has been locked up"
Lang.JailMaxWarns               = "Your sentence has been increased " .. tostring(Config.JailWarnsMinutes) .. " " .. Lang.Minutes .. " for breach of the same"
Lang.JailMaxDistance            = "Don't try to escape or your sentence will be increased"
Lang.WarnError                  = "The warn could not be applied due to an internal error"
Lang.WarnDeletedError           = "The warn could not be removed due to an internal error"
Lang.BanError                   = "The ban could not be applied due to an internal error"
Lang.UnBanError                 = "Unable to delete ban due to internal error"
Lang.ReturnError                = "Could not return to previous location as it does not exist"
Lang.Cash                       = "Money has been added to the player of type: "
Lang.ESX                        = "An error has occurred while connecting to ESX"
Lang.JobFail                    = "The job does not exist"
Lang.Job                        = "Job changed to"
Lang.Money                      = "The player has been given money of the type: "
Lang.JobFailKick                = "You have been kicked off the server because your work was invalid"
Lang.GroupUpgraded              = "The group has been established: ^1"
Lang.Group                      = "Group has been established for you: "
Lang.GroupError                 = "An embedded error has occurred and the group could not be changed"
Lang.FixJob                     = "The default job has been set for "
Lang.JailedTime                 = "You have %s seconds left to serve your sentence"
Lang.ArgumentNeeded             = "Arguments missing"
Lang.MySQL                      = "The database is not connected yet."
Lang.Report                     = "^0[^1Report^0] ^3%s^0 (^2%s^0) | %s"

Lang.InsufficientPrivileges     = "You don't have enough privileges"
Lang.SecurityGodMode            = "It has been detected that you illegitimately use the native function SetPlayerInvincible"
Lang.SecurityWeapons            = "It has been detected that you have a weapon not allowed by the server"


Lang.Global.PlayerJailed        = "^1%s^0 has been incarcerated for: %s minutes."
Lang.Global.PlayerBanned        = "^1%s^0 has been banned from the server by: ^1%s^0."

-- Lenguaje --