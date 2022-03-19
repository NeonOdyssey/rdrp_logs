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


