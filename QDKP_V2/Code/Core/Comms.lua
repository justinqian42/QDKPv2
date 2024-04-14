QDKP = LibStub("AceAddon-3.0"):NewAddon("QDKP", "AceConsole-3.0", "AceComm-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")

function QDKP:OnEnable()
    --QDKP2_Debug(2, "Comms", "OnEnable")
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
	ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM",		QDKP.ChatFrameFilterOutbound)
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
    '^%s*?[dD][kK][pP]%s+(%a+)%s*(.*)',
	'^%s*?[mM][sS]%s+(%a+)%s*(.*)',
	'^%s*?[dD][kK][pP]',
	'^%s*?[mM][aA][iI][nN]',
	'^%s*?[rR][eE][pP][oO][rR][tT]',
	'^%s*?[cC][lL][aA][sS][sS]',
	'^%s*?[hH][eE][lL][pP]'
}
local numCommandPatterns = #commandPatterns


function QDKP:ChatFrameFilter(...)


    local event = select(1, ...)
    local sender = select(3, ...)
    local msg = select(2, ...)
    local msgID = select(12, ...)
    --QDKP2_Debug(2, "Comms", "ChatFrameFilter " .. event ..  "," .. sender ..  "," .. msg ..  "," .. msgID)
	local guid = select(13, ...)
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
	local command, params = nil, nil
    for i=1, numCommandPatterns do
        command, params = strmatch(msg, commandPatterns[i])
        if command then
			--QDKP2_Debug(2, "Comms", "command found " .. command .. " from " .. sender .. " in message " .. msg)

			local a  = QDKP2_OD(msg, sender, guid)
			--QDKP:SendWhisperResponse(a, sender)
			QDKP2_SendHiddenWhisper(a,sender)
			if QDKP2_OS_VIEWWHSP or strmatch(msg, '^%s*?[mM][sS]%s+(%a+)%s*(.*)') then
				lastMsgFiltered = false
				return false
			end
			lastMsgFiltered = true
			return true
		end
    end	
end

function QDKP:ChatFrameFilterOutbound(...)


    local event = select(1, ...)
    local sender = select(3, ...)
    local msg = select(2, ...)
    local msgID = select(12, ...)
    QDKP2_Debug(2, "Comms", "ChatFrameFilter Outbound, event: " .. event ..  ", sender: " .. sender ..  ", msg " .. msg ..  ", msgid" .. msgID)
    -- Do not process WIM History
    if not msgID or msgID<1 then return end

    -- See if we have already processed the message.
    if lastMsgID == msgID then
        return lastMsgFiltered
    end

    lastMsgID         = msgID
    lastMsgFiltered   = false

		-- find QDKP2> in the chat message and prevent these messages from showing up.
	if QDKP2_OS_VIEWWHSP then
		lastMsgFiltered = false
		return false
	end
	if strfind(msg, '^%s*QDKP2>%s+') then
	    QDKP2_Debug(2, "Comms", "command found ")
		--todo change to true
		lastMsgFiltered = true
		return true
	end
end


--currently not used
function QDKP:SendWhisperResponse(message, target)
    QDKP2_Debug(2, "Comms", "SendWhisperResponse " .. message .. target)
	local MsgPrefix     = 'QDKP2> '
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
    --QDKP2_Debug(2,"SMM","start")
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
	--QDKP2_Debug(2,"SMM","num " .. num)
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
          --QDKP2_Debug(2,'SendMonitorMessage(RAID): ' .. out, true)
        end
    else
        num = GetNumPartyMembers()
        if num>0 then
            --we're in party
            QDKP:SendCommMessage("QDKP2", format("MONITOR:%s", out), "PARTY", nil, prio)
            --QDKP2_Debug(2,'SendMonitorMessage(PARTY): ' .. out, true)
        else
            --we're not grouped, send message to self for debugging purposes.
            QDKP:SendCommMessage("QDKP2", format("MONITOR:%s", out), "WHISPER", UnitName('player'), prio)
            --QDKP2_Debug(2,'SendMonitorMessage(WHISPER->SELF): ' .. out, true)
        end
    end
end

--[[
	Event gets triggered when ML receives a message from a candidate
]]
function QDKP:CommandReceived(prefix, message, distribution, sender)
    --QDKP2_Debug(2, "Comms", "CommandReceived " .. prefix .. message .. distribution .. sender)
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
			QDKP2GUI_Roster.ITEM = ""
        
		elseif monCmd == 'CLEARRAIDLIST' then

            -- in an attempt to speed the monitors up, lets just receive all candidate data for new loot in big chunk
            -- not candidate by candidate, updates hereafter are still one by one.

            QDKP2GUI_Roster.RAID_DICT = {}
			QDKP2GUI_Roster.RAID_LIST = {}			
			
		elseif monCmd == 'RAIDLIST' then	
			--QDKP2_Debug(2,"RAIDLIST","Received")

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
			--QDKP2_Debug(2, "RAIDLIST","Args"..  i.. ", " .. loot.. ", " .. name.. ", " .. roll.. ", " .. bid.. ", " .. value.. ", " .. rank.. ", " .. class.. ", " .. net.. ", " ..  total.. ", " ..  spent.. ", " ..  s_gain.. ", " ..  s_spent.. ", " ..  r.. ", " ..  g.. ", " ..  b.. ", " ..  a)

        elseif monCmd == 'MONITORLIST' then
			--QDKP2_Debug(2,"MONITORLIST","Received")

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
			
			--QDKP2_Debug(2, "MONITORLIST","Args"..  i.. ", " .. loot.. ", " .. name.. ", " .. roll.. ", " .. bid.. ", " .. value.. ", " .. rank.. ", " .. class.. ", " .. net.. ", " ..  total.. ", " ..  spent.. ", " ..  s_gain.. ", " ..  s_spent.. ", " ..  r.. ", " ..  g.. ", " ..  b.. ", " ..  a)
			--QDKP2_Debug(2, "SETCANDIDATEDATA","Args"..  i..loot..name..roll..bid..value..rank..class.. net.. total.. spent.. s_gain.. s_spent)
			QDKP2_Events:Fire("DATA_UPDATED","roster")
			
        elseif monCmd == 'REMOVELOOT' or monCmd == 'DECREASELOOT' then
            --QDKP2_Debug(2, "Monitor", "REMOVELOOT " .. loot)
            --local loot = unpack(monArgs)

            QDKP2_BidM_Reset()

        end
    end
end


function QDKP:HandleDKPCommand(text, sender)

  if not QDKP2_ODS_ENABLE then return; end

  local P1,P2,P3=QDKP2libs.AceConsole:GetArgs(string.lower(text), 3)

  if not P1 then return; end
  if P1=="?dkp" then
    if not QDKP2_IsInGuild(sender) and not QDKP_OD_EXT then
      return {"QDKP2 - Only GuildMembers can use the On-Demand whisper system."}
    end
    if not P2 then P2=sender
    else P2 = QDKP2_FormatName(P2)
    end
    if not QDKP2_NOD then
      return {"QDKP2 - This feature is disabled."}
    elseif not (P2==sender or QDKP2_IOD_REQALL) then
      return {"QDKP2 - You can't ask for other player's data."}
    elseif not QDKP2_IsInGuild(P2) then
      return {"QDKP2 - "..P2..": Invalid Guild Member Name."}
    else
      if P2==sender then
        return {QDKP2_MakeNotifyMsg(P2, false)}
      else
        return {QDKP2_MakeNotifyMsg(P2,true)}
      end
    end
  elseif P1=="?main" then
    if not QDKP2_IsInGuild(sender) and not QDKP_OD_EXT then
      return {"QDKP2 - Only GuildMembers can use the On-Demand whisper system."}
    end
    if not P2 then P2=sender
    else P2 = QDKP2_FormatName(P2)
    end
	if QDKP2_IsAlt(sender)== nil then return {"This character is the main."};end
	return {"Alt of: " .. QDKP2_GetMain(sender)}

	
  elseif P1=="?report" or P1=="?log" then
    if not QDKP2_IsInGuild(sender) and not QDKP_OD_EXT then
      return {"QDKP2 - Only GuildMembers can use the On-Demand whisper system."}
    end
    if not P2 then P2=sender
    else P2 = QDKP2_FormatName(P2)
    end
    if P2=="raid" then P2="RAID"; end
    if not QDKP2_ROD then
      return {"QDKP2 - This feature is disabled."}
    elseif not (P2==sender or QDKP2_IOD_REQALL) and not P2=="RAID" then
      return {"QDKP2 - You can't ask for other player's data."}
    elseif not (QDKP2_IsInGuild(P2) or P2 == "RAID") then
      return {"QDKP2 - "..P2..": Invalid Guild Member Name."}
    else
      P3=P3 or "all"
      local reportType, logList
      if P3=="current" or P3=="last" then
        local Session=QDKP2_IsManagingSession()
        if not Session then
          return {"QDKP2 - I'm not managing any session at the moment."}
        end
        local _,SessName=QDKP2_GetSessionInfo(Session)
        reportType="Current session "..SessName
        logList=QDKP2log_GetPlayer(P2,Session)
      elseif P3=="all" then
        logList=QDKP2log_ParsePlayerLog(P2)
        reportType="Overview"
      else
        return {'QDKP2 - Wrong report type. Usage: "?report <name> all/current"'}
      end
      local Report=QDKP2_GetReport(logList,P2,reportType)
      if Report and #Report>0 then
        return Report
      else
        return {'QDKP2 - No data in '..P2.."'s Log."}
      end
    end
--[[
  elseif P1=="?prices" or P1=="?price" then
    if not QDKP2_IsInGuild(sender) and not QDKP_OD_EXT then
      return {"QDKP2 - Only GuildMembers can use the On-Demand whisper system."}
    end
    if not QDKP2_POD then return {"QDKP2 - This feature is disabled."}; end
    local arg=string.lower(string.sub(text,8))
    local output={}
    if not arg then return {"QDKP2 - You must give a keyword to search for."}; end
    if string.len(arg)<QDKP2_POD_MINKEYWORD then return {"QDKP2 - Search keyword must be longer than "..tostring(QDKP2_POD_MINKEYWORD).." chars."}; end
    local results=0
    for i=1,table.getn(QDKP2_ChargeLoots) do
      if strfind(string.lower(QDKP2_ChargeLoots[i].item), arg) then
        table.insert(output,"["..QDKP2_ChargeLoots[i].item.."], "..tostring(QDKP2_ChargeLoots[i].DKP).." DKP")
	results=results+1
      end
      if results>QDKP2_POD_MAXRESULTS then
        table.insert(output,"Max result limit hit. Please refine your search.")
	return output
      end
    end
    if table.getn(output)>0 then
      return output
    else
      return {"QDKP2 - No results for the given keyword"}
    end
]]
--[[
  elseif P1=="?award" or P1=="?awards" or P1=="?bossaward"or P1=="?bossawards" then
    if not QDKP2_IsInGuild(sender) and not QDKP_OD_EXT then
      return {"QDKP2 - Only GuildMembers can use the On-Demand whisper system."}
    end
    if not QDKP2_AOD then return {"QDKP2 - This feature is disabled."}; end
    local arg=string.lower(string.sub(text,8))
    local output={}
    if not arg then return 3{"QDKP2 - You must give a keyword to search for."}; end
    if string.len(arg)<QDKP2_AOD_MINKEYWORD then return {"QDKP2 - Search keyword must be longer than "..tostring(QDKP2_AOD_MINKEYWORD).." chars."}; end
    local results=0
    for i=1,table.getn(QDKP2_Bosses) do
      if strfind(string.lower(QDKP2_Bosses[i].name), arg) then
        local boss=QDKP2_Bosses[i].name
        table.insert(output,'"'..boss..'": '..tostring(QDKP2_GetBossAward(boss)))
        results=results+1
      end
      if results>QDKP2_AOD_MAXRESULTS then
        table.insert(output,"Max result limit hit. Please refine your search.")
	return output
      end
    end
    if table.getn(output)>0 then
      return output
    else
      return {"QDKP2 - No results for the given keyword"}
    end
]]
  elseif (P1=="?classdkp" or P1=="?dkpclass" or P1=="?class") then
    if not QDKP2_IsInGuild(sender) and not QDKP_OD_EXT then
      return {"QDKP2 - Only GuildMembers can use the On-Demand whisper system."}
    end
    if not QDKP2_COD then return {"QDKP2 - This feature is disabled."}; end
    local arg=P2 or QDKP2class[sender]
    if not arg or arg=="--" then return {"QDKP2 - You must provide the class to report."}; end
    local origArg=arg
    local class
    arg=QDKP2classEnglish[QDKP2_FormatName(arg)] or arg
    arg=string.lower(arg)
    if arg=="druid" then class=arg
    elseif arg=="hunter" then class=arg
    elseif arg=="mage" then class=arg
    elseif arg=="paladin" then class=arg
    elseif arg=="priest" then class=arg
    elseif arg=="rogue" then class=arg
    elseif arg=="shaman" then class=arg
    elseif arg=="warlock" then class=arg
    elseif arg=="warrior" then class=arg
    elseif arg=="dk" or arg=="death knight" then
      class="death knight"
    else
      return {"QDKP2 - You must specify a valid class name."}
    end
    local output={"QDKP2 - DKP Top list for "..origArg.." class:"}
    local list={}
    for i = 1,table.getn(QDKP2name) do
      local name=QDKP2name[i]
      local classAct=QDKP2classEnglish[QDKP2class[name]] or QDKP2class[name]
      if string.lower(classAct)==class then
        table.insert(list,name)
      end
    end
    if table.getn(list)==0 then return {"QDKP2 - No Guild Members for the given class"}; end
    QDKP2_netSort(list)
    for i=1,table.getn(list) do
      if i > QDKP2_LOD_MAXLEN then break; end
      local name=list[i]
      local DKP=QDKP2_GetNet(name)
      table.insert(output,tostring(i).."."..QDKP2_GetName(name)..": "..tostring(DKP).." DKP")
    end
    return output

  elseif (P1=="?rankdkp" or P1=="?dkprank") then
    if not QDKP2_IsInGuild(sender) and not QDKP_OD_EXT then
      return {"QDKP2 - Only GuildMembers can use the On-Demand whisper system."}
    end
    if not QDKP2_KOD then return {"QDKP2 - This feature is disabled."}; end
    local rank_str=string.sub(text,10)
    local rank
    if string.len(rank_str)>0 then rank=string.lower(rank_str); end
    rank=rank or string.lower(QDKP2rank[sender])
    if not rank then return {"QDKP2 - You must provide the rank to report."}; end
    if rank=="external" then rank="*external*"; end
    local output={"QDKP2 - DKP Top list for "..rank.." rank:"}
    local list={}
    for i = 1,table.getn(QDKP2name) do
      local name=QDKP2name[i]
      local rankAct=string.lower(QDKP2rank[name])
      if rankAct==rank then
        table.insert(list,name)
      end
    end
    if table.getn(list)==0 then return {"QDKP2 - No Guild Members for the given rank"}; end
    QDKP2_netSort(list)
    for i=1,table.getn(list) do
      if i > QDKP2_LOD_MAXLEN then break; end
      local name=list[i]
      local DKP=QDKP2_GetNet(name)
      table.insert(output,tostring(i).."."..QDKP2_GetName(name)..": "..tostring(DKP).." DKP")
    end
    return output

  elseif P1=="?help" or P1=="?commands" or P1=="?command"  or P1=="?keyword"  or P1=="?keywords" then
    if not QDKP2_IsInGuild(sender) and not QDKP_OD_EXT then
      return {"QDKP2 - Only GuildMembers can use the On-Demand whisper system."}
    end
    local output={  "QDKP2 - On Demand enabled keywords list:"}
	table.insert(output, '"?main <name>"' )
    if QDKP2_NOD then table.insert(output, '"?dkp <name>"' ); end
    if QDKP2_COD then table.insert(output, '"?classdkp <class>"'); end
    if QDKP2_KOD then table.insert(output, '"?rankdkp <rank>"'); end
    if QDKP2_ROD then table.insert(output, '"?log <name> all/current"'); end
    --if QDKP2_POD then table.insert(output, '"?prices <keywords>"'); end
    --if QDKP2_AOD then table.insert(output, '"?award <keywords>"'); end
    if table.getn(output)==1 then output={"QDKP2 - No On Demand enabled keywords."}; end
    return output
  end
end
