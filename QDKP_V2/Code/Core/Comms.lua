QDKP = LibStub("AceAddon-3.0"):NewAddon("QDKP", "AceConsole-3.0", "AceComm-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")

function QDKP:OnEnable()
    QDKP2_Debug(2, "Comms", "OnEnable")
    -- Postpone the chathooks to make sure we're the last hooking these.
    self:ScheduleTimer("PostEnable", 1)
	QDKP:RegisterComm("QDKP2", 		    "CommandReceived")
	self:RegisterChatCommand("dl", function() PerformTest() end)

end

function PerformTest()
  -- Send remote clients in guild a message about the upgrade - version 0.3.10 and up
  QDKP:SendCommMessage("QDKP2", "0_test", "WHISPER", 'Astarrix')
  QDKP:SendCommand("MONITOR", "TEST", "RAID")
end

function QDKP:PostEnable()
    -- Inbound Chat Hooking
    ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER",		QDKP.ChatFrameFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY",    	QDKP.ChatFrameFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID",    	QDKP.ChatFrameFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER",    	QDKP.ChatFrameFilter)
end

local function split(str, max_line_length)
   local lines = {}
   local line
   str:gsub('(%s*)(%S+)', 
      function(spc, word) 
         if not line or #line + #spc + #word > max_line_length then
            table.insert(lines, line)
            line = word
         else
            line = line..spc..word
         end
      end
   )
   table.insert(lines, line)
   return lines
end


local lastMsgID = nil
local lastMsgFiltered = false

local commandPatterns = {
    '^%s*?[aA][dD][kK][pP]%s+(%a+)%s*(.*)',
	'^%s*?[aA][dD][kK][pP]%s'
}
local numCommandPatterns = #commandPatterns

function QDKP:ChatFrameFilter(...)


    local event = select(1, ...)
    local sender = select(3, ...)
    local msg = select(2, ...)
    local msgID = select(12, ...)
    QDKP2_Debug(2, "Comms", "ChatFrameFilter " .. event ..  "," .. sender ..  "," .. msg ..  "," .. msgID)
    -- Do not process WIM History
    if not msgID or msgID<1 then return end

    -- See if we have already processed the message.
    if lastMsgID == msgID then
        return lastMsgFiltered
    end

    lastMsgID         = msgID
    lastMsgFiltered   = false

    -- find ?dkp or any of the other command patterns in the chat message and try to handle the command.
		-- find EPGPLootmaster: in the chat message and prevent these messages from showing up.
	if strfind(msg, '^%s*QDKP2:%s+') then
	    QDKP2_Debug(2, "Comms", "command found ")
		--todo change to true
		lastMsgFiltered = true
		return false
	end
end

function QDKP:SendWhisperResponse(message, target)
    QDKP2_Debug(2, "Comms", "SendWhisperResponse " .. message .. target)
    SendChatMessage( MsgPrefix .. ( message or ''), 'WHISPER', nil, target );
    return false;
end

function QDKP:SendCommand(command, message, target)
    QDKP2_Debug(2, "Comms", "Sendcommand " .. command .. message .. target)

	if not target then
		return self:Print("Could not send command, no target specified")
	end;
    if target=='RAID' then
        self:SendCommMessage("QDKP2", format("%s:%s", tostring(command), tostring(message)), "RAID", nil, "ALERT")
    elseif target=='PARTY' then
        self:SendCommMessage("QDKP2", format("%s:%s", tostring(command), tostring(message)), "PARTY", nil, "ALERT")
    elseif target=='GUILD' then
        self:SendCommMessage("QDKP2", format("%s:%s", tostring(command), tostring(message)), "GUILD", nil, "ALERT")
    else
        -- Don't use AceComm for messages to self, call function directly
        if target==UnitName('player') then
            QDKP:CommandReceived(LootMaster, "QDKP2", format("%s:%s", tostring(command), tostring(message)), 'WHISPER', target)
        else
            self:SendCommMessage("QDKP2", format("%s:%s", tostring(command), tostring(message)), "WHISPER", target, "ALERT")
        end
    end
end

function QDKP:ParseMonitorMessage( message )
    QDKP2_Debug(2, "Comms", "Message " .. message)
    local tpl = {}
    for v in string.gmatch(message, '(.-)(%^%*)') do
        if v=='nil' then v=nil end;
        tinsert(tpl, v)
    end
    for _,_,v in string.gmatch(message, '(.*)(%^%*)(.-)$') do
        if v=='nil' then v=nil end;
        tinsert(tpl, v)
    end
    if #tpl==0 then
        if message=='nil' then message=nil end;
        tinsert(tpl, message)
    end

    return tpl;
end

local MonitorMessagePriorities = {
    ["PRIORITY_HIGH"]       = "ALERT",
    ["PRIORITY_NORMAL"]     = "NORMAL",
    ["PRIORITY_LOW"]        = "BULK"
}


function QDKP:SendMonitorMessage(...)
    QDKP2_Debug(2,"SMM","start")
    --if not LootMaster.db.profile.monitorSend then return end;

    local numArgs = select("#", ...)

    local prio = nil
    if numArgs>0 then
        prio = select(numArgs, ...)
        prio = MonitorMessagePriorities[prio];
    end

    if prio then
        numArgs = numArgs - 1
    else
        prio = "NORMAL"
    end

    local out = ""
    for i=1,numArgs do
      if i > 1 then
        out = out .. "^*"
      end
      out = out .. tostring(select(i, ...))
    end

    local msgType = tostring(select(1, ...))

    local num = GetNumRaidMembers()
	QDKP2_Debug(2,"SMM","num " .. num)
    if num>0 then
        -- we're in raid
        if false then --LootMaster.db.profile.monitorSendAssistantOnly and msgType=='ADDLOOT' then
          -- Only send to promoted players in raid, use whispers.
          for raidIndex=1, MAX_RAID_MEMBERS do
            local rName, rRank, _, _, _, _, _, rOnline, _, _, rIsML = GetRaidRosterInfo(raidIndex)
            if (rName and rOnline) and (rRank>0 or rIsML) and rName~=UnitName('player') then
              -- Player is online and not self and rank is assistant (1) or leader (2) or masterlooter
              QDKP2_Debug(2, 'SendMonitorMessage('..rName..'): ' .. out, true)
              QDKP:SendCommMessage(2,"QDKP2", format("MONITOR:%s", out), "WHISPER", rName, prio)
            end
          end
        else
          -- Everybody is allowed to monitor, just use the raid channel
          QDKP:SendCommMessage("QDKP2", format("MONITOR:%s", out), "RAID", nil, prio)
          QDKP2_Debug(2,'SendMonitorMessage(RAID): ' .. out, true)
        end
    else
        num = GetNumPartyMembers()
        if num>0 then
            --we're in party
            QDKP:SendCommMessage("QDKP2", format("MONITOR:%s", out), "PARTY", nil, prio)
            QDKP2_Debug(2,'SendMonitorMessage(PARTY): ' .. out, true)
        else
            --we're not grouped, send message to self for debugging purposes.
            QDKP:SendCommMessage("QDKP2", format("MONITOR:%s", out), "WHISPER", UnitName('player'), prio)
            QDKP2_Debug(2,'SendMonitorMessage(WHISPER->SELF): ' .. out, true)
        end
    end
end

--[[
	Event gets triggered when ML receives a message from a candidate
]]
function QDKP:CommandReceived(prefix, message, distribution, sender)
    QDKP2_Debug(2, "Comms", "CommandReceived " .. prefix .. message .. distribution .. sender)
	local _,_,command, message = string.find(message, "^([%a_]-):(.*)$")
	command = strupper(command or '');
	message = message or '';

  local sendMonitorUpdate = (distribution == 'WHISPER')
  local preventMonitorUpdate = not sendMonitorUpdate;

	if command == 'SYNC' then
	  local a = 1


  elseif command == 'RAIDINFO' then

        self:RaidInfoLookupResponse(sender, message)

  elseif command == 'MONITOR' then
        -- ignore our own monitor messages!
        if sender == UnitName('player') then return end

        local monArgs = self:ParseMonitorMessage(message)
        local monCmd = tremove(monArgs, 1)

        if monCmd == 'ADDLOOT' then
			a=1
            --local loot = unpack(monArgs)
			--QDKP2_Debug(2, "Monitor", "Addloot " .. loot)
            

        elseif monCmd == 'CLEARMONITORLIST'then

            -- in an attempt to speed the monitors up, lets just receive all candidate data for new loot in big chunk
            -- not candidate by candidate, updates hereafter are still one by one.

            QDKP2GUI_Roster.MONITOR_DICT = {}
			QDKP2GUI_Roster.MONITOR_LIST = {}
        
		elseif monCmd == 'CLEARRAIDLIST' then

            -- in an attempt to speed the monitors up, lets just receive all candidate data for new loot in big chunk
            -- not candidate by candidate, updates hereafter are still one by one.

            QDKP2GUI_Roster.RAID_DICT = {}
			QDKP2GUI_Roster.RAID_LIST = {}			
			
		elseif monCmd == 'RAIDLIST' then	
			QDKP2_Debug(2,"RAIDLIST","Received")

			local index, loot, name, roll, bid, value, rank, class, net, total, spent, s_gain, s_spent,r,g,b,a, displayname = unpack(monArgs)
			
            --local loot,nameS,roll,bid,value,rank,class,net,total,spent,hours,s_gain,s_spent = unpack(monArgs)
			i = tonumber(index)
			if not roll=='-' then roll=tonumber(roll); end
			if not bid=='-' then bid=tonumber(bid); end
			if not value=='-' then value=tonumber(value); end
			if not net=='-' then net=tonumber(net); end
			if not total=='-' then total=tonumber(total); end
			if not spent=='-' then spent=tonumber(spent); end
			if not s_gain=='-' then s_gain=tonumber(s_gain); end
			if not s_spent=='-' then s_spent=tonumber(s_spent); end
			if not r=='-' then r=tonumber(r); end
			if not g=='-' then g=tonumber(g); end
			if not b=='-' then b=tonumber(b); end
			if not a=='-' then a=tonumber(a); end

            --if not loot then
                -- Add check against current loot in monitor
            --    return;
            --end
			--QDKP2GUI_Roster.MONITOR_DICT = {}
			table.insert(QDKP2GUI_Roster.RAID_LIST,name)
			QDKP2GUI_Roster.RAID_DICT[i] = {}
			--table.insert(QDKP2GUI_Roster.RAID_DICT[i],name)
            QDKP2GUI_Roster.RAID_DICT[i]['name'] = name
			QDKP2GUI_Roster.RAID_DICT[i]['rank']=rank
			QDKP2GUI_Roster.RAID_DICT[i]['class']=class
			QDKP2GUI_Roster.RAID_DICT[i]['net']=net
			QDKP2GUI_Roster.RAID_DICT[i]['total']=total
			QDKP2GUI_Roster.RAID_DICT[i]['spent']=spent
			QDKP2GUI_Roster.RAID_DICT[i]['s_gain']=s_gain
			QDKP2GUI_Roster.RAID_DICT[i]['s_spent']=s_spent
			QDKP2GUI_Roster.RAID_DICT[i]['r']=r
			QDKP2GUI_Roster.RAID_DICT[i]['g']=g
			QDKP2GUI_Roster.RAID_DICT[i]['b']=b
			QDKP2GUI_Roster.RAID_DICT[i]['a']=a
			QDKP2GUI_Roster.RAID_DICT[i]['roll']='-'
			QDKP2GUI_Roster.RAID_DICT[i]['bid']='-'
			QDKP2GUI_Roster.RAID_DICT[i]['value']='-'
			QDKP2GUI_Roster.RAID_DICT[i]['loot']='-'
			QDKP2GUI_Roster.RAID_DICT[i]['displayname']=displayname
			
			QDKP2_Events:Fire("DATA_UPDATED","roster")
			QDKP2_Debug(2, "RAIDLIST","Args"..  i.. ", " .. loot.. ", " .. name.. ", " .. roll.. ", " .. bid.. ", " .. value.. ", " .. rank.. ", " .. class.. ", " .. net.. ", " ..  total.. ", " ..  spent.. ", " ..  s_gain.. ", " ..  s_spent.. ", " ..  r.. ", " ..  g.. ", " ..  b.. ", " ..  a)

        elseif monCmd == 'MONITORLIST' then
			QDKP2_Debug(2,"MONITORLIST","Received")

			local index, loot, name, roll, bid, value, rank, class, net, total, spent, s_gain, s_spent,r,g,b,a, displayname = unpack(monArgs)
			
            --local loot,nameS,roll,bid,value,rank,class,net,total,spent,hours,s_gain,s_spent = unpack(monArgs)
			i = tonumber(index)
			if not roll=='-' then roll=tonumber(roll); end
			if not bid=='-' then bid=tonumber(bid); end
			if not value=='-' then value=tonumber(value); end
			if not net=='-' then net=tonumber(net); end
			if not total=='-' then total=tonumber(total); end
			if not spent=='-' then spent=tonumber(spent); end
			if not s_gain=='-' then s_gain=tonumber(s_gain); end
			if not s_spent=='-' then s_spent=tonumber(s_spent); end
			if not r=='-' then r=tonumber(r); end
			if not g=='-' then g=tonumber(g); end
			if not b=='-' then b=tonumber(b); end
			if not a=='-' then a=tonumber(a); end

            --if not loot then
                -- Add check against current loot in monitor
            --    return;
            --end
			--QDKP2GUI_Roster.MONITOR_DICT = {}
			table.insert(QDKP2GUI_Roster.MONITOR_LIST,name)
			QDKP2GUI_Roster.MONITOR_DICT[i] = {}
			--table.insert(QDKP2GUI_Roster.MONITOR_DICT[i],name)
            QDKP2GUI_Roster.MONITOR_DICT[i]['name'] = name
			QDKP2GUI_Roster.MONITOR_DICT[i]['roll']=roll
			QDKP2GUI_Roster.MONITOR_DICT[i]['bid']=bid
			QDKP2GUI_Roster.MONITOR_DICT[i]['value']=value
			QDKP2GUI_Roster.MONITOR_DICT[i]['rank']=rank
			QDKP2GUI_Roster.MONITOR_DICT[i]['class']=class
			QDKP2GUI_Roster.MONITOR_DICT[i]['net']=net
			QDKP2GUI_Roster.MONITOR_DICT[i]['total']=total
			QDKP2GUI_Roster.MONITOR_DICT[i]['spent']=spent
			QDKP2GUI_Roster.MONITOR_DICT[i]['s_gain']=s_gain
			QDKP2GUI_Roster.MONITOR_DICT[i]['s_spent']=s_spent
			QDKP2GUI_Roster.MONITOR_DICT[i]['loot']=loot
			QDKP2GUI_Roster.MONITOR_DICT[i]['r']=r
			QDKP2GUI_Roster.MONITOR_DICT[i]['g']=g
			QDKP2GUI_Roster.MONITOR_DICT[i]['b']=b
			QDKP2GUI_Roster.MONITOR_DICT[i]['a']=a
			QDKP2GUI_Roster.MONITOR_DICT[i]['displayname']=displayname
			
			for k,v in pairs(QDKP2GUI_Roster.MONITOR_DICT[i]) do
				if QDKP2GUI_Roster.MONITOR_DICT[i][k]=="QDKPPH" then
					QDKP2GUI_Roster.MONITOR_DICT[i][k]=nil
				end
			--	QDKP2_Debug(2,"REC ARG", QDKP2GUI_Roster.MONITOR_DICT[i][k])
			end
			
			QDKP2_Debug(2, "MONITORLIST","Args"..  i.. ", " .. loot.. ", " .. name.. ", " .. roll.. ", " .. bid.. ", " .. value.. ", " .. rank.. ", " .. class.. ", " .. net.. ", " ..  total.. ", " ..  spent.. ", " ..  s_gain.. ", " ..  s_spent.. ", " ..  r.. ", " ..  g.. ", " ..  b.. ", " ..  a)
			--QDKP2_Debug(2, "SETCANDIDATEDATA","Args"..  i..loot..name..roll..bid..value..rank..class.. net.. total.. spent.. s_gain.. s_spent)
			QDKP2_Events:Fire("DATA_UPDATED","roster")
			
        elseif monCmd == 'REMOVELOOT' or monCmd == 'DECREASELOOT' then
            --QDKP2_Debug(2, "Monitor", "REMOVELOOT " .. loot)
            --local loot = unpack(monArgs)

            QDKP2_BidM_Reset()

        end
    end
end

function QDKP:HandleEPGPCommand(command, message, sender, event)

    local preventMonitorUpdate = false;
    local preventMessageDisplay = false;

    if command=='STANDBY' then
        -- dont handle this message, let EPGP handle it.
        return false;
    end
	
	if command=='REPORT' then
        -- dont handle this message, let EPGP handle it.
		--EPGP:EPGP_Export_Popup("raid")
		self:Print(string.format("Request from %s", sender))
		Text=EPGP_Export("raid","text")
		leng = string.len(Text)
		self:Print("Length is ", leng)
		return_text = Text:gsub("|","\\")
		return_text = return_text:gsub(" ","+")
		return_text = return_text:gsub("\n","~")
		self:SendCommMessage("EPGPLootMasterC", format("%s:%s", tostring(command), tostring("REPORT_START")), "WHISPER", sender, "ALERT")
		local st = split(return_text,200)
		for _,v in ipairs(st) do
		   self:Print(v)
		   self:SendCommMessage("EPGPLootMasterC", format("%s:%s", tostring(command), tostring(v)), "WHISPER", sender, "ALERT")
		end
		self:SendCommMessage("EPGPLootMasterC", format("%s:%s", tostring(command), tostring("REPORT_END")), "WHISPER", sender, "ALERT")
		
        return true;
    end

    if command=='PAS' or command=='PASS' or command=='NEED' or command=='GREED' or command=='MAJOR' or command=='MINOR' or command=='OS' and message~='' then
        --Someone is trying to need/greed/pass a loot item.

        if command=='PAS' then
            command = 'PASS'
        end
		
		if command=='MAJOR' then
            command = 'NEED'
        end
		
		if command=='MINOR' then
            command = 'MINORUPGRADE'
        end
		
		if command=='OS' then
            command = 'OFFSPEC'
        end

        local itemID = self:GetLootID( message )
        if itemID then
            if self:IsCandidate( itemID, sender ) then
                if LootMaster.db.profile.ignoreResponseCorrections and tonumber(self:GetCandidateData( itemID, sender, 'response' )) >= LootMaster.RESPONSE.NEED then
                    self:SendWhisperResponse( format('You have already made a selection for %s. Corrections have been disabled by the master looter.', message), sender );
                    return true;
                else
                    self:SetCandidateResponse( itemID, sender, LootMaster.RESPONSE[command] or LootMaster.RESPONSE.INIT, preventMonitorUpdate );
                    self:SetCandidateData( itemID, sender, 'enchantingSkill', 0, true );
                    self:ReloadMLTableForLoot( itemID )
                    self:SendWhisperResponse( format('Registered %s for %s', command, message), sender );
                end
            else
                self:SendWhisperResponse( format('You are not a candidate for %s. Perhaps you were not involved in the fight?', message), sender );
                return true;
            end
        else
            self:SendWhisperResponse( format('%s not found on the loot list, perhaps it has already been looted?', message), sender );
            return true;
        end

        return true;
    else
        self:SendWhisperResponse( format('"%s" not understood. usage: /w %s !epgp major/minor/os/pass [itemlink]', command, UnitName('player')), sender );
        self:Print( format('%s sent "%s %s"; not understood, returned usage list.', sender or '', command or '', message or ''));
        return true;
    end

end