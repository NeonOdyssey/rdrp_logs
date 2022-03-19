RegisterServerEvent('log_console')
AddEventHandler('log_console', function(msg, resourceName, logType)
	exports.rdrp_logs:console(msg, resourceName, logType)
end)

RegisterServerEvent('log_discord')
AddEventHandler('log_discord', function(description, logType, resourceName, title, fields)
	exports.rdrp_logs:console(description, logType, resourceName, title, fields)
end)


-----------------------
-- Player join / leave 
-----------------------
AddEventHandler('playerConnecting', function()
	exports.rdrp_logs:discord("📥 **"..GetPlayerName(source).."**\n*"..GetPlayerIdentifier(source).."*", "join", GetCurrentResourceName())
end)

AddEventHandler('playerDropped', function(reason)
	exports.rdrp_logs:discord("📤 **"..GetPlayerName(source).."**\n*"..GetPlayerIdentifier(source).."*\n\n```"..reason.."```", "leave", GetCurrentResourceName())
end)


-- exports.rdrp_logs:discord("📥 **PLAYER_NAME**\n*PLAYER_IDENTIFIER*", "join", GetCurrentResourceName())
-- exports.rdrp_logs:discord("📤 **PLAYER_NAME**\n*PLAYER_IDENTIFIER*\n\n```some reason here idk why but sometimes good to catch exit crashes```", "leave", GetCurrentResourceName())
-- exports.rdrp_logs:discord("Just a chat msg idk what to put here", "chat", GetCurrentResourceName(), "💬 [ID]PLAYER_NAME")
-- exports.rdrp_logs:discord("💀 PLAYER_NAME killed PLAYER_NAME with a fist fight", "death", GetCurrentResourceName())
-- exports.rdrp_logs:discord("Some misc message", "misc", GetCurrentResourceName(), "MISC TITLE")
-- exports.rdrp_logs:discord("[ID]STAFF_NAME warned [ID]PLAYER_NAME", "admin", GetCurrentResourceName(), "/warn", _field)
-- exports.rdrp_logs:discord("Some of your RDRP scripts are out of date.Please make sure all of your scripts are up to date. \n\nYou can download and check for updates on our github or our discord server.", "announce", "System", " Announcement", _field2)
