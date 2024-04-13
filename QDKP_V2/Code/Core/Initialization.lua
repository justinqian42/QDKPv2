-- Copyright 2010 Riccardo Belloli (belloli@email.it)
-- This file is a part of QDKP_V2 (see about.txt in the Addon's root folder)

--             ## CORE FUNCTIONS ##
--               Initializators
--
-- Here I have all the functions called when QDKP starts, Including Constants and variables initializators.
--
-- API Documentation:
-- QDKP2_InitData(Guild): Reset only unsaved data if called without arguments. Reset <Guild>'s data if provided, and resets all if <Guild> is "*_ALL_*". Guild is moreline "Realm-Guild"
-- QDKP2_ReadDatabase(GuildName): Reads the database of the given guild, and assign it to the globals. calls QDKP2_ReadDatabase if needed.
-- QDKP2_OnLoad(): Called as the UI and QDKP are fully loaded (including saved variables). WoW API should be 100% up.
-- QDKP2_ResetPlayer(name): Resets all data regarding <name>. Used when i find corrupted data.



-------------------------------INIT DATA-------------------------



QDKP2_Data = {}
QDKP2backup = {}
QDKP2suppressWhispers = {}

function QDKP2_InitData(GuildName, NoClearLocal)
  if GuildName == "*_ALL_*" or not QDKP2_Data then
    QDKP2_Debug(1, "Init", "Clearing ALL the data storing")
    QDKP2_Data = { StoreVers = QDKP2_DBREQ }
  elseif GuildName then
    QDKP2_Debug(2, "Init", "Initializating database for guild " .. tostring(GuildName))
    QDKP2_Data[GuildName] = {}
    QDKP2_Data[GuildName].LAST_OPEN = time()
  end
  if not NoClearLocal then
    QDKP2_Debug(3, "Init", "Clearing all UnSaved variables")
    QDKP2name = {}
    QDKP2rank = {}
    QDKP2rankIndex = {}
    QDKP2class = {}
    QDKP2online = {}
    QDKP2sessionCode = nil
    QDKP2currentSessions = {}
    QDKP2_BossDeath = {}
    QDKP2_SuppressWhisper = {}
  end
end

function QDKP2_ReadDatabase(GuildName)

  if not GuildName and QDKP2_GUILD_NAME then
    GuildName = GetRealmName() .. "-" .. QDKP2_GUILD_NAME
  end

  local GuildData
  if not GuildName then
    GuildData = {}
  else
    if not QDKP2_Data[GuildName] then
      QDKP2_InitData(GuildName, true);
    end
    QDKP2_Debug(2, "Init", "Reading Guild Data for guild " .. tostring(GuildName))
    GuildData = QDKP2_Data[GuildName]
    GuildData.LAST_OPEN = time()
  end

  GuildData.log = GuildData.log or {}
  GuildData.log["0"] = GuildData.log["0"] or {}

  GuildData.logEntries = GuildData.logEntries or {}
  GuildData.logEntries.BackMod = GuildData.logEntries.BackMod or {}
  GuildData.logEntries.Deleted = GuildData.logEntries.Deleted or {}

  GuildData.raid = GuildData.raid or {}
  GuildData.raidOffline = GuildData.raidOffline or {}
  GuildData.standby = GuildData.standby or {}
  GuildData.raidRemoved = GuildData.raidRemoved or {}

  GuildData.TimerBase = GuildData.TimerBase or {}

  GuildData.note = GuildData.note or {}

  GuildData.stored = GuildData.stored or {}

  GuildData.externals = GuildData.externals or {}
  GuildData.msChanges = GuildData.msChanges or {}

  GuildData.ironMan = GuildData.ironMan or {}

  GuildData.Alts = GuildData.Alts or {}
  GuildData.AltsRestore = GuildData.AltsRestore or {}
  GuildData.ExtNotes = GuildData.ExtNotes or {}

  GuildData.SID = GuildData.SID or {}
  GuildData.SID.INDEX = GuildData.SID.INDEX or 1
  GuildData.SID.DELETED = GuildData.SID.DELETED or {}
  GuildData.ModifiedPlayers = GuildData.ModifiedPlayers or {}

  GuildData.GUI = GuildData.GUI or {}
  GuildData.GUI.DKP_RaidBonus = GuildData.GUI.DKP_RaidBonus or QDKP2GUI_Default_RaidBonus
  GuildData.GUI.DKP_Timer = GuildData.GUI.DKP_Timer or QDKP2GUI_Default_TimerBonus
  GuildData.GUI.DKP_IM = GuildData.GUI.DKP_IM or QDKP2GUI_Default_IMBonus
  GuildData.GUI.DKP_QuickModify = GuildData.GUI.DKP_QuickModify or QDKP2GUI_Default_QuickMod
  GuildData.GUI.ShowOutGuild = GuildData.GUI.ShowOutGuild or QDKP2GUI_Default_ShowOutGuild

  GuildData.BidM = GuildData.BidM or {}

  QDKP2log = GuildData.log
  QDKP2log["0"] = QDKP2log["0"]

  QDKP2logEntries_BackMod = GuildData.logEntries.BackMod
  QDKP2logEntries_Deleted = GuildData.logEntries.Deleted

  QDKP2raid = GuildData.raid
  QDKP2raidOffline = GuildData.raidOffline
  QDKP2standby = GuildData.standby
  QDKP2raidRemoved = GuildData.raidRemoved

  QDKP2timerBase = GuildData.TimerBase

  QDKP2note = GuildData.note

  QDKP2stored = GuildData.stored

  QDKP2externals = GuildData.externals
  QDKP2msChanges = GuildData.msChanges

  QDKP2ironMan = GuildData.ironMan

  QDKP2alts = GuildData.Alts
  QDKP2altsRestore = GuildData.AltsRestore
  
  QDKP2extnote = GuildData.ExtNotes

  QDKP2_SID = GuildData.SID
  QDKP2_ModifiedPlayers = GuildData.ModifiedPlayers

  QDKP2GUI_Vars = GuildData.GUI

  QDKP2_BidM = GuildData.BidM

  QDKP2_StoreVers = QDKP2_Data.StoreVers or 0

  QDKP2_DataLoaded = GuildName

  QDKP2_InitData()

end

-- Called as WoW enters the world.
function QDKP2_Init()
  QDKP2_Debug(2, "Core", "Initializing the Addon")

  --Load libraries
  QDKP2libs = {}
  QDKP2libs.AceConsole = LibStub:GetLibrary("AceConsole-3.0")
  QDKP2libs.Events = LibStub:GetLibrary("CallbackHandler-1.0")
  QDKP2libs.Deformat = AceLibrary:GetInstance("Deformat-2.0")
  pcall(function()
    QDKP2libs.BossBabble = LibStub:GetLibrary("LibBabble-Boss-3.0");
  end)
  pcall(function()
    QDKP2libs.ClassBabble = LibStub:GetLibrary("LibBabble-Class-3.0");
  end)
  pcall(function()
    QDKP2libs.ZoneBabble = LibStub:GetLibrary("LibBabble-Zone-3.0");
  end)
  pcall(function()
    QDKP2libs.InventoryBabble = LibStub:GetLibrary("LibBabble-Inventory-3.0");
  end)
  QDKP2libs.Timer = LibStub:GetLibrary("AceTimer-3.0")
  QDKP2libs.CheckTimer = LibStub:GetLibrary("AceTimer-3.0")
  local TesteDiCazzo = {}  --Variable's name says all (in italian). This is what I think about CallbackHandler developers.
  QDKP2_Events = QDKP2libs.Events:New(TesteDiCazzo)
  QDKP2_Events["RegisterCallback"] = TesteDiCazzo["RegisterCallback"]
  QDKP2_Events["UnregisterCallback"] = TesteDiCazzo["UnregisterCallback"]
  QDKP2_Events["UnregisterAllCallbacks"] = TesteDiCazzo["UnregisterAllCallbacks"]
  pcall(function()
    QDKP2bossEnglish = QDKP2libs.BossBabble:GetReverseLookupTable();
  end)
  pcall(function()
    QDKP2classEnglish = QDKP2libs.ClassBabble:GetReverseLookupTable();
  end)
  pcall(function()
    QDKP2zoneEnglish = QDKP2libs.ZoneBabble:GetReverseLookupTable();
  end)
  pcall(function()
    QDKP2inventoryEnglish = QDKP2libs.InventoryBabble:GetReverseLookupTable();
  end)
  if not QDKP2bossEnglish or not QDKP2classEnglish then
    QDKP2_Debug(1, "Core", "LibBabble-3 doesn't manage your client's locale (" .. GetLocale() .. ").")
  end
  QDKP2bossEnglish = QDKP2bossEnglish or {}
  QDKP2classEnglish = QDKP2classEnglish or {}
  QDKP2zoneEnglish = QDKP2zoneEnglish or {}
  QDKP2inventoryEnglish = QDKP2inventoryEnglish or {}
  BagId = 0
  SlotId = 1
  ItemId = 0
  ItemLink=""
  Temp_BagId = 0
  Temp_SlotId = 1
  assignedDE = ""
  MSChangesAvailable = false
  --Register events
  --QDKP2:RegisterEvent("ADDON_LOADED")
  QDKP2:RegisterEvent("GUILD_ROSTER_UPDATE")
  QDKP2:RegisterEvent("PLAYER_ENTERING_WORLD")
  QDKP2:SetScript("OnEvent", QDKP2_OnEvent)

  --Clear all data
  QDKP2_InitData("*_ALL_*")

  --QDKP2_SetLetters()
  QDKP2_SetSlashCommands()

  QDKP2_Events:Fire("INIT")

  QDKP2_Debug(2, "Core", "Addon initialized")
end


--called as PLAYER_ENTERING_WORLD is called.
function QDKP2_OnLoad()

  --clears the recorded debug list, if any.
  --to record a debug list, write "/script QDKP2_Debug_List={}" in the console.
  QDKP2_Debug_List = nil
  QDKP2_Debug(2, "Core", "Starting the addon")

  -- Gets player and guild details
  QDKP2_PLAYER_NAME_12 = string.sub(UnitName("player"), 1, 12)
  local guildName, guildRankName, guildRankIndex = GetGuildInfo("player");
  QDKP2_GUILD_NAME = guildName

  if QDKP2_Data and QDKP2_DBREQ > (QDKP2_Data.StoreVers or 0) then
    QDKP2_InitData("*_ALL_*")
    QDKP2_Msg(QDKP2_LOC_ClearDB)
  end

  if QDKP2_ODS_ENABLE then
    QDKP2_OriginalChatMsgHandler = ChatFrame_MessageEventHandler   --hook the MessageEvent to hide On-Demand whispers
    ChatFrame_MessageEventHandler = QDKP2_ChatMsgHandler
  end

  QDKP2_ReadDatabase()

  --cleans the database. Delete guild entriess that have not been opened for more than 90 days.
  for k, v in pairs(QDKP2_Data) do
    if type(v) == 'table' then
      if not v.LAST_OPEN then
        v.LAST_OPEN = time();
      end
      if time() - v.LAST_OPEN > 7776000 then
        --these are 90 days in seconds
        QDKP2_Debug(1, "Core", k .. " has not been opened for more than 90 days. Removing it from database.")
        QDKP2_Data[k] = nil                    --brutal delete. work for the garbage collector.
      end
    end
  end

  QDKP2_TimeDelta = QDKP2_GuessTimeZone()

  QDKP2_BossBonusSet(QDKP2_AutoBossEarn_Default)
  QDKP2_DetectBidSet(QDKP2_DetectBid_Default)
  QDKP2_FixedPricesSet(QDKP2_UseFixedPrice_Default)

  --I use these timers to refresh guild data (on regular basis)
  QDKP2_GuildRefTimerObj = QDKP2libs.Timer:ScheduleRepeatingTimer(QDKP2_TimeToRefresh, 30)

  --if i was managing a session but i'm not in the raid anymore, close the session.
  if QDKP2_IsManagingSession() and (not QDKP2_IsRaidPresent() or not QDKP2_OfficerMode()) then
    QDKP2_StopSession(true)
  end

  if QDKP2_IronManIsOn() and not QDKP2_IsManagingSession() then
    QDKP2_IronManWipe()
  end

  --registering the boss kill listeners for DBM and BigWigs
  if DBM then
    QDKP2_Debug(3, "Core", "DBM found, registering callback to detect boss death")
    DBM:RegisterCallback("kill", QDKP2_DBMBossKill)
  elseif not BigWigsLoader then
    QDKP2_Msg("Couldn't find Deadly Boss Mod nor BigWigs. If nobody has them in the raid, you won't be able to detect boss kills.", "WARNING")
  end

  --registering the bos

  if QDKP2_isTimerOn() and QDKP2_IsManagingSession() and (time() - QDKP2timerBase.TIMER) < 3600 then
    -- if i had timer and have been offline for less than an hour
    QDKP2_TimerOn(true)          --resume
  elseif QDKP2_isTimerOn() then
    QDKP2_TimerOff()
  end

  if QDKP2_BETA then
    local mess = QDKP2_LOC_BetaWarning
    QDKP2_NotifyUser(mess, function()
      return ;
    end)
  end

  QDKP2_Data.StoreVers = QDKP2_DBREQ

  local LoadedMsg = QDKP2_LOC_Loaded
  if QDKP2_BETA then
    LoadedMsg = string.gsub(LoadedMsg, "$BETA", "BETA")
  else
    LoadedMsg = string.gsub(LoadedMsg, "$BETA", "")
  end

  QDKP2_ACTIVE = true
  QDKP2_RefreshGuild()
  QDKP2_RefreshGuild()
  QDPK2_ReadGuildInfo = true
  GuildRoster()

  QDKP2:RegisterEvent("RAID_ROSTER_UPDATE")
  QDKP2:RegisterEvent("PARTY_MEMBERS_CHANGED")
  QDKP2:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
  QDKP2:RegisterEvent("CHAT_MSG_LOOT")
  QDKP2:RegisterEvent("CHAT_MSG_RAID")
  QDKP2:RegisterEvent("CHAT_MSG_RAID_WARNING")
  QDKP2:RegisterEvent("CHAT_MSG_RAID_LEADER")
  QDKP2:RegisterEvent("CHAT_MSG_WHISPER")
  QDKP2:RegisterEvent("CHAT_MSG_ADDON")
  QDKP2:RegisterEvent("CHAT_MSG_SYSTEM")
  QDKP2:RegisterEvent("CHAT_MSG_PARTY")
  QDKP2:RegisterEvent("ITEM_LOCKED")
  QDKP2_Events:Fire("LOAD")

  LoadedMsg = string.gsub(LoadedMsg, "$VERSION", QDKP2_VERSION)
  QDKP2_Msg(LoadedMsg);
  QDKP2_Debug(2, "Core", "Addon started")
end

-- This deletes all local data and call guild's download. It's called when i find
-- an error in player's values.
function QDKP2_ResetPlayer(name)
  QDKP2_Msg(name .. "'s local data seems to be corrupted. Sorry, I have to reset it.", "ERROR")

  for i = 1, #QDKP2raid do
    local checkName = QDKP2raid[i]
    if checkName == name then
      table.remove(QDKP2raid, i);
      break ;
    end
  end

  for i = 1, #QDKP2name do
    local checkName = QDKP2name[i]
    if checkName == name then
      table.remove(QDKP2name, i);
      break ;
    end
  end

  QDKP2rank[name] = nil
  QDKP2rankIndex[name] = nil
  QDKP2class[name] = nil
  QDKP2online[name] = nil

  QDKP2note[name] = nil

  QDKP2stored[name] = nil

  QDKP2alts[name] = nil
  QDKP2altsRestore[name] = nil

  QDKP2standby[name] = nil

  QDKP2_RefreshGuild()
  GuildRoster()

  QDKP2_Msg(name .. " has been initialized successfully")
end

function QDKP2_GetSpec(name, display)
	spec = nil
	if QDKP2msChanges[name] then
		QDKP2_UpdateSpec(name)
		if QDKP2msChanges[name]['ms'] ~= '-' then
			spec = QDKP2msChanges[name]['ms']
		else
			spec = QDKP2msChanges[name]['spec']
			if display and spec ~= '-' then spec = '*'..QDKP2msChanges[name]['spec']; end
		end	
	else
		QDKP2_UpdateSpec(name, true)
		QDKP2msChanges[name]['class'] = QDKP2class[name] or UnitClass(name)
		QDKP2msChanges[name]['ms'] = '-'
		QDKP2msChanges[name]['auto'] = true
		spec = '-'
	end
	QDKP2_Debug(2, 'Specs: ', name .. " " .. tostring(QDKP2msChanges[name]['spec']) .. ' ' .. tostring(QDKP2msChanges[name]['ms']))
	return spec
end

function QDKP2_UpdateSpec(name, sure)
	if not MSChangesAvailable and not sure then return; end
	if LibStub("LibGroupTalents-1.0"):GetUnitTalentSpec(name) ~= nil then
		spec = LibStub("LibGroupTalents-1.0"):GetUnitTalentSpec(name)
		if spec == "Feral Combat" then spec = "Feral"; end
		role = LibStub("LibGroupTalents-1.0"):GetUnitRole(name)
		if role == 'caster' or role == 'melee' then role = 'DPS'; end
		if role == 'tank' then role = 'Tank'; end
		if role == 'healer' then role = 'Healer'; end
		cls = QDKP2class[name] or UnitClass(name)
		QDKP2msChanges[name]['spec'] = spec or '-'
		if spec == "Feral" or spec == "Blood" or spec == "Unholy" or spec == "Frost" and cls~='Mage' then
			QDKP2msChanges[name]['spec'] = spec .. " " .. role
		end
	else
		QDKP2msChanges[name]['spec'] = '-'
	end
end

function QDKP2_Change_Spec(ms,name)
	--this function is always available
	QDKP2msChanges[name]['ms'] = ms
end

function QDKP2_Enable_MSChanges()
	MSChangesAvailable = true
	QDKP2_BidM_SendMessage(nil,"MANAGER","bid_start","MS Changes are now available, whisper me \"?ms YOURSPECHERE\" now. Changes are closed when I say or on first boss death." )
end

function QDKP2_Disable_MSChanges()
	MSChangesAvailable = false
	QDKP2_BidM_SendMessage(nil,"MANAGER","bid_start","MS Changes are now closed!")
end

function QDKP2_GetMSOnly(name)
	spec = nil
	if QDKP2msChanges[name] then
		QDKP2_UpdateSpec(name)
		if QDKP2msChanges[name]['ms'] ~= '-' then
			spec = QDKP2msChanges[name]['ms']
		else
			spec = nil
		end	
	else
		curSpec = LibStub("LibGroupTalents-1.0"):GetActiveTalentGroup("player")
		
		QDKP2msChanges[name] = {}
		if LibStub("LibGroupTalents-1.0"):GetUnitTalentSpec(name) ~= nil then
			QDKP2msChanges[name]['spec'] = LibStub("LibGroupTalents-1.0"):GetUnitTalentSpec(name) or '-'
		else
			QDKP2msChanges[name]['spec'] = '-'
		end
		QDKP2msChanges[name]['class'] = QDKP2class[name] or UnitClass(name)
		QDKP2msChanges[name]['ms'] = '-'
		spec = nil
	end
	return spec
end



function QDKP2_MS_Pattern_Matcher(text, class)
	local commandPatterns = {
		{pattern='ret%a*',token='Retribution'},
		{pattern='ho%a*',token='Holy'},
		{pattern='hp%a*',token='Holy'},
		{pattern='pro%a*',token='Protection'},
		{pattern='pp%a*',token='Protection'},
		{pattern='fur%a*',token='Fury'},
		{pattern='fwa%a*',token='Fury'},
		{pattern='ar%a*',token='Arms'},
		{pattern='uh%a*',token='Unholy'},
		{pattern='fro%a*',token='Frost'},
		{pattern='fdk%a*',token='Frost'},
		{pattern='blo%a*',token='Blood'},
		{pattern='bdk%a*',token='Blood'},
		{pattern='com%a*',token='Combat'},
		{pattern='cro%a*',token='Combat'},
		{pattern='ass%a*',token='Assassination'},
		{pattern='aro%a*',token='Assassination'},
		{pattern='sub%a*',token='Subtlety'},
		{pattern='sro%a*',token='subtlety'},
		{pattern='mm%a*',token='Marskman'},
		{pattern='mar%a*',token='Marksman'},
		{pattern='sur%a*',token='Survival'},
		{pattern='bm%a*',token='Beastmaster'},
		{pattern='beas%a*',token='Beastmaster'},
		{pattern='ele%a*',token='Elemental'},
		{pattern='spe%a*',token='Spellhance'},
		{pattern='res%a*',token='Restoration'},
		{pattern='rsha%a*',token='Restoration'},
		{pattern='rdu%a*',token='Restoration'},
		{pattern='en%a*',token='Enhancement'},
		{pattern='cat%a*',token='Feral'},
		{pattern='bear%a*',token='Feral'},
		{pattern='gua%a*',token='Feral'},
		{pattern='fe%a*',token='Feral'},
		{pattern='kit%a*',token='Feral'},
		{pattern='boo%a*',token='Balance'},
		{pattern='moo%a*',token='Balance'},
		{pattern='bal%a*',token='Balance'},
		{pattern='chic%a*',token='Balance'},
		{pattern='sha%a*',token='Shadow'},
		{pattern='sp%a*',token='Shadow'},
		{pattern='dis%a*',token='Discipline'},
		{pattern='fir%a*',token='Fire'},
		{pattern='fma%a*',token='Fire'},
		{pattern='arc%a*',token='Arcane'},
		{pattern='ama%a*',token='Arcane'},
		{pattern='demo%a*',token='Demonology'},
		{pattern='aff%a*',token='Affliction'},
		{pattern='des%a*',token='Destruction'},
	}
	local numCommandPatterns = #commandPatterns
	QDKP2_Debug(2, "Pattern Matching ", text .. class)
	text = string.lower(text)
	class = string.lower(class)
	local command = nil
	for i=1, numCommandPatterns do
		command = strmatch(text, commandPatterns[i]['pattern'])
		if command then
			token = string.gsub(text, commandPatterns[i]['pattern'], commandPatterns[i]['token'])
			return token
		end
	end
	return text
end