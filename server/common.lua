function SendPlayerChatMessage(source, message, color)
	if(color == nil) then
		color = { 0, 0x99, 255}
	end
	TriggerClientEvent("chatMessage", source, '', color, message)
end
