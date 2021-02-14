-- Login count for Warcraft
-- Coded by ArNz8o8

local EventFrame = CreateFrame("Frame")
EventFrame:RegisterEvent("PLAYER_LOGIN")
EventFrame:SetScript("OnEvent", function(self,event,...) 
	if type(LogonCount) ~= "table" then
		LogonCount = {}
		LogonCount[UnitName("Player")] = 1
		message('Hi '.. UnitName("Player")..". I do believe this is the first you logged in. I'm, Echelon btw (ArNz says hi).")
	else 
		if LogonCount[UnitName("Player")] == 1 then
			Message('Dayum '.. UnitName("Player")..". Echelon here, counting and stuff. You've been here " .. LogonCount[UnitName('Player')] .. " time before.")
		else
			ChatFrame1:AddMessage('omg '.. UnitName("Player")..". There you are, finally. Let me see, this is logon no " .. LogonCount[UnitName('Player')] .. ".")
		end
		local found = 0
				for name,number in pairs(LogonCount) do 
						 if UnitName("Player") == name then
								LogonCount[name] = LogonCount[name] + 1
								found = 1
						 end
				end
				if found == 0 then
						 LogonCount[UnitName("Player")] = 1
				end
	end
end)
