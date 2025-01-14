GEAR = LibStub("AceAddon-3.0"):NewAddon("GEAR", "AceConsole-3.0", "AceComm-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")
    
function GEAR:QDKP2_BIS_List_Creator()
    BISListTable = {}
    
    -- 6948 - Hearthstone
    BISListTable[6948] = {}
    BISListTable[6948].bis = {}
    table.insert(BISListTable[6948].bis, {'ROGUE','Assassin'})
    table.insert(BISListTable[6948].bis, {'DRUID','Balance'})
    table.insert(BISListTable[6948].bis, {'MAGE','Fire'})
    table.insert(BISListTable[6948].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[6948].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[6948].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[6948].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[6948].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[6948].bis, {'WARRIOR','Fury'})
    table.insert(BISListTable[6948].bis, {'DEATHKNIGHT','Blood Tank'})
    
    -- --------------------- Head ---------------------
    
    -- 50640 - Broken Ram Skull Helm
    BISListTable[50640] = {}
    BISListTable[50640].bis = {}
    table.insert(BISListTable[50640].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50640].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50640].bis, {'WARRIOR', 'Protection'})
    
    -- 50713 - Geistlord's Punishment Sack
    BISListTable[50713] = {}
    BISListTable[50713].bis = {}
    table.insert(BISListTable[50713].bis, {'ROGUE', 'Assassin'})
    
    -- --------------------- Neck ---------------------
    
    -- 50682 - Bile-Encrusted Medallion
    BISListTable[50682] = {}
    BISListTable[50682].bis = {}
    table.insert(BISListTable[50682].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50682].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50682].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50682].bis, {'WARRIOR', 'Protection'})
    
    -- 50627 - Noose of Malachite
    BISListTable[50627] = {}
    BISListTable[50627].bis = {}
    table.insert(BISListTable[50627].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50627].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50627].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50627].bis, {'WARRIOR', 'Protection'})
    
    -- 54581 - Penumbra Pendant
    BISListTable[54581] = {}
    BISListTable[54581].bis = {}
    table.insert(BISListTable[54581].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[54581].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[54581].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[54581].bis, {'WARRIOR', 'Fury'})
    
    -- 50647 - Ahn'kahar Onyx Neckguard
    BISListTable[50647] = {}
    BISListTable[50647].bis = {}
    table.insert(BISListTable[50647].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[50647].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[50647].bis, {'WARRIOR', 'Fury'})
    
    -- 50180 - Lana'thel's Chain of Flagellation
    BISListTable[50180] = {}
    BISListTable[50180].bis = {}
    table.insert(BISListTable[50180].bis, {'DEATHKNIGHT', 'Frost DPS'})
    
    -- 50633 - Sindragosa's Cruel Claw
    BISListTable[50633] = {}
    BISListTable[50633].bis = {}
    table.insert(BISListTable[50633].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50633].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[50633].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[50633].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50633].bis, {'ROGUE', 'Assassin'})
    table.insert(BISListTable[50633].bis, {'SHAMAN', 'Enhancement'})
    
    -- 50724 - Blood Queen's Crimson Choker
    BISListTable[50724] = {}
    BISListTable[50724].bis = {}
    table.insert(BISListTable[50724].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50724].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50724].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50724].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[50724].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50724].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50724].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[50724].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[50724].bis, {'WARLOCK', 'Affliction'})
    
    -- 50658 - Amulet of the Silent Eulogy
    BISListTable[50658] = {}
    BISListTable[50658].bis = {}
    table.insert(BISListTable[50658].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50658].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50658].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50658].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50658].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[50658].bis, {'SHAMAN', 'Spellhance'})
    table.insert(BISListTable[50658].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50658].bis, {'WARLOCK', 'Affliction'})
    
    -- 50609 - Bone Sentinel's Amulet
    BISListTable[50609] = {}
    BISListTable[50609].bis = {}
    table.insert(BISListTable[50609].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[50609].bis, {'PRIEST', 'Holy'})
    
    -- 50700 - Holiday's Grace
    BISListTable[50700] = {}
    BISListTable[50700].bis = {}
    table.insert(BISListTable[50700].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[50700].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50700].bis, {'SHAMAN', 'Restoration'})
    
    -- --------------------- Shoulders ---------------------
    
    -- 50660 - Boneguard Commander's Pauldrons
    BISListTable[50660] = {}
    BISListTable[50660].bis = {}
    table.insert(BISListTable[50660].bis, {'PALADIN', 'Protection'})
    
    -- 50698 - Horrific Flesh Epaulets
    BISListTable[50698] = {}
    BISListTable[50698].bis = {}
    table.insert(BISListTable[50698].bis, {'SHAMAN', 'Elemental'})
    
    -- 50646 - Cultist's Bloodsoaked Spaulders
    BISListTable[50646] = {}
    BISListTable[50646].bis = {}
    table.insert(BISListTable[50646].bis, {'ROGUE', 'Assassin'})
    
    -- --------------------- Cloak ---------------------
    
    -- 50718 - Royal Crimson Cloak
    BISListTable[50718] = {}
    BISListTable[50718].bis = {}
    table.insert(BISListTable[50718].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50718].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50718].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50718].bis, {'WARRIOR', 'Protection'})
    
    -- 50466 - Sentinel's Winter Cloak
    BISListTable[50466] = {}
    BISListTable[50466].bis = {}
    table.insert(BISListTable[50466].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50466].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50466].bis, {'WARRIOR', 'Protection'})
    
    -- 50467 - Might of the Ocean Serpent
    BISListTable[50467] = {}
    BISListTable[50467].bis = {}
    table.insert(BISListTable[50467].bis, {'DEATHKNIGHT', 'Frost DPS'})
    
    -- 50677 - Winding Sheet
    BISListTable[50677] = {}
    BISListTable[50677].bis = {}
    table.insert(BISListTable[50677].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[50677].bis, {'PALADIN', 'Retribution'})
    
    -- 50653 - Shadowvault Slayer's Cloak
    BISListTable[50653] = {}
    BISListTable[50653].bis = {}
    table.insert(BISListTable[50653].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50653].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[50653].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[50653].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[50653].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50653].bis, {'ROGUE', 'Assassin'})
    table.insert(BISListTable[50653].bis, {'SHAMAN', 'Enhancement'})
    table.insert(BISListTable[50653].bis, {'WARRIOR', 'Fury'})
    
    -- 54583 - Cloak of Burning Dusk
    BISListTable[54583] = {}
    BISListTable[54583].bis = {}
    table.insert(BISListTable[54583].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[54583].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[54583].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[54583].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[54583].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[54583].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[54583].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[54583].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[54583].bis, {'SHAMAN', 'Spellhance'})
    table.insert(BISListTable[54583].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[54583].bis, {'WARLOCK', 'Affliction'})
    
    -- 50628 - Frostbinder's Shredded Cape
    BISListTable[50628] = {}
    BISListTable[50628].bis = {}
    table.insert(BISListTable[50628].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50628].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50628].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50628].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[50628].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50628].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50628].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[50628].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[50628].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50628].bis, {'WARLOCK', 'Affliction'})
    
    -- 50668 - Greatcloak of the Turned Champion
    BISListTable[50668] = {}
    BISListTable[50668].bis = {}
    table.insert(BISListTable[50668].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[50668].bis, {'PRIEST', 'Holy'})
    
    -- 47547 - Varian's Furor
    BISListTable[47547] = {}
    BISListTable[47547].bis = {}
    table.insert(BISListTable[47547].bis, {'DEATHKNIGHT', 'Frost DPS'})
    
    -- 47545 - Vereesa's Dexterity
    BISListTable[47545] = {}
    BISListTable[47545].bis = {}
    table.insert(BISListTable[47545].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[47545].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[47545].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[47545].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[47545].bis, {'WARRIOR', 'Fury'})
    
    -- --------------------- Chest ---------------------
    
    -- 50680 - Rot-Resistant Breastplate
    BISListTable[50680] = {}
    BISListTable[50680].bis = {}
    table.insert(BISListTable[50680].bis, {'PALADIN', 'Holy'})
    
    -- 50656 - Ikfirus's Sack of Wonder
    BISListTable[50656] = {}
    BISListTable[50656].bis = {}
    table.insert(BISListTable[50656].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50656].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50656].bis, {'ROGUE', 'Assassin'})
    
    -- 50717 - Sanguine Silk Robes
    BISListTable[50717] = {}
    BISListTable[50717].bis = {}
    table.insert(BISListTable[50717].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[50717].bis, {'PRIEST', 'Holy'})
    
    -- 50629 - Robe of the Waking Nightmare
    BISListTable[50629] = {}
    BISListTable[50629].bis = {}
    table.insert(BISListTable[50629].bis, {'MAGE', 'Fire'})
    
    -- --------------------- Wrists ---------------------
    
    -- 51901 - Gargoyle Spit Bracers
    BISListTable[51901] = {}
    BISListTable[51901].bis = {}
    table.insert(BISListTable[51901].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[51901].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[51901].bis, {'WARRIOR', 'Protection'})
    
    -- 50611 - Bracers of Dark Reckoning
    BISListTable[50611] = {}
    BISListTable[50611].bis = {}
    table.insert(BISListTable[50611].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50611].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50611].bis, {'WARRIOR', 'Protection'})
    
    -- 50659 - Polar Bear Claw Bracers
    BISListTable[50659] = {}
    BISListTable[50659].bis = {}
    table.insert(BISListTable[50659].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[50659].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[50659].bis, {'PALADIN', 'Retribution'})
    
    -- 50687 - Bloodsunder's Bracers
    BISListTable[50687] = {}
    BISListTable[50687].bis = {}
    table.insert(BISListTable[50687].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[50687].bis, {'SHAMAN', 'Elemental'})
    
    -- 54584 - Phaseshifter's Bracers
    BISListTable[54584] = {}
    BISListTable[54584].bis = {}
    table.insert(BISListTable[54584].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[54584].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[54584].bis, {'SHAMAN', 'Restoration'})
    
    -- 50630 - Bracers of Eternal Dreaming
    BISListTable[50630] = {}
    BISListTable[50630].bis = {}
    table.insert(BISListTable[50630].bis, {'DRUID', 'Restoration'})
    
    -- 50655 - Scourge Hunter's Vambraces
    BISListTable[50655] = {}
    BISListTable[50655].bis = {}
    table.insert(BISListTable[50655].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[50655].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[50655].bis, {'SHAMAN', 'Enhancement'})
    
    -- 54580 - Umbrage Armbands
    BISListTable[54580] = {}
    BISListTable[54580].bis = {}
    table.insert(BISListTable[54580].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[54580].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[54580].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[54580].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[54580].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[54580].bis, {'ROGUE', 'Assassin'})
    table.insert(BISListTable[54580].bis, {'SHAMAN', 'Spellhance'})
    table.insert(BISListTable[54580].bis, {'SHAMAN', 'Enhancement'})
    table.insert(BISListTable[54580].bis, {'WARRIOR', 'Fury'})
    
    -- 50670 - Toskk's Maximized Wristguards
    BISListTable[50670] = {}
    BISListTable[50670].bis = {}
    table.insert(BISListTable[50670].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[50670].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50670].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50670].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50670].bis, {'WARRIOR', 'Fury'})
    
    -- 54582 - Bracers of Fiery Night
    BISListTable[54582] = {}
    BISListTable[54582].bis = {}
    table.insert(BISListTable[54582].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[54582].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[54582].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[54582].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[54582].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[54582].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[54582].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[54582].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[54582].bis, {'WARLOCK', 'Affliction'})
    
    -- 50651 - The Lady's Brittle Bracers
    BISListTable[50651] = {}
    BISListTable[50651].bis = {}
    table.insert(BISListTable[50651].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50651].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50651].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50651].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50651].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50651].bis, {'WARLOCK', 'Affliction'})
    
    -- 50686 - Death Surgeon's Sleeves
    BISListTable[50686] = {}
    BISListTable[50686].bis = {}
    table.insert(BISListTable[50686].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50686].bis, {'PRIEST', 'Holy'})
    
    -- --------------------- Gloves ---------------------
    
    -- 50690 - Fleshrending Gauntlets
    BISListTable[50690] = {}
    BISListTable[50690].bis = {}
    table.insert(BISListTable[50690].bis, {'PALADIN', 'Retribution'})
    
    -- 50650 - Fallen Lord's Handguards
    BISListTable[50650] = {}
    BISListTable[50650].bis = {}
    table.insert(BISListTable[50650].bis, {'PALADIN', 'Holy'})
    
    -- 50703 - Unclean Surgical Gloves
    BISListTable[50703] = {}
    BISListTable[50703].bis = {}
    table.insert(BISListTable[50703].bis, {'SHAMAN', 'Restoration'})
    
    -- 50619 - Anub'ar Stalker's Gloves
    BISListTable[50619] = {}
    BISListTable[50619].bis = {}
    table.insert(BISListTable[50619].bis, {'SHAMAN', 'Spellhance'})
    table.insert(BISListTable[50619].bis, {'SHAMAN', 'Enhancement'})
    
    -- 54560 - Changeling Gloves
    BISListTable[54560] = {}
    BISListTable[54560].bis = {}
    table.insert(BISListTable[54560].bis, {'SHAMAN', 'Restoration'})
    
    -- 50615 - Handguards of Winter's Respite
    BISListTable[50615] = {}
    BISListTable[50615].bis = {}
    table.insert(BISListTable[50615].bis, {'DRUID', 'Restoration'})
    
    -- 50675 - Aldriana's Gloves of Secrecy
    BISListTable[50675] = {}
    BISListTable[50675].bis = {}
    table.insert(BISListTable[50675].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[50675].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50675].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[50675].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50675].bis, {'WARRIOR', 'Fury'})
    
    -- 50663 - Gunship Captain's Mittens
    BISListTable[50663] = {}
    BISListTable[50663].bis = {}
    table.insert(BISListTable[50663].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50663].bis, {'PRIEST', 'Shadow'})
    
    -- 50722 - San'layn Ritualist Gloves
    BISListTable[50722] = {}
    BISListTable[50722].bis = {}
    table.insert(BISListTable[50722].bis, {'PRIEST', 'Discipline'})
    
    -- --------------------- Waist ---------------------
    
    -- 50991 - Verdigris Chain Belt
    BISListTable[50991] = {}
    BISListTable[50991].bis = {}
    table.insert(BISListTable[50991].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50991].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50991].bis, {'WARRIOR', 'Protection'})
    
    -- 50691 - Belt of Broken Bones
    BISListTable[50691] = {}
    BISListTable[50691].bis = {}
    table.insert(BISListTable[50691].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50691].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50691].bis, {'WARRIOR', 'Protection'})
    
    -- 50620 - Coldwraith Links
    BISListTable[50620] = {}
    BISListTable[50620].bis = {}
    table.insert(BISListTable[50620].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[50620].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[50620].bis, {'WARRIOR', 'Fury'})
    
    -- 54587 - Split Shape Belt
    BISListTable[54587] = {}
    BISListTable[54587].bis = {}
    table.insert(BISListTable[54587].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[54587].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[54587].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[54587].bis, {'SHAMAN', 'Spellhance'})
    
    -- 50671 - Belt of the Blood Nova
    BISListTable[50671] = {}
    BISListTable[50671].bis = {}
    table.insert(BISListTable[50671].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[50671].bis, {'SHAMAN', 'Elemental'})
    
    -- 50688 - Nerub'ar Stalker's Cord
    BISListTable[50688] = {}
    BISListTable[50688].bis = {}
    table.insert(BISListTable[50688].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[50688].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[50688].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[50688].bis, {'SHAMAN', 'Enhancement'})
    
    -- 50707 - Astrylian's Sutured Cinch
    BISListTable[50707] = {}
    BISListTable[50707].bis = {}
    table.insert(BISListTable[50707].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50707].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50707].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[50707].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50707].bis, {'ROGUE', 'Assassin'})
    
    -- 50705 - Professor's Bloodied Smock
    BISListTable[50705] = {}
    BISListTable[50705].bis = {}
    table.insert(BISListTable[50705].bis, {'DRUID', 'Restoration'})
    
    -- 50613 - Crushing Coldwraith Belt
    BISListTable[50613] = {}
    BISListTable[50613].bis = {}
    table.insert(BISListTable[50613].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50613].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50613].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50613].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50613].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50613].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[50613].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50613].bis, {'WARLOCK', 'Affliction'})
    
    -- 50702 - Lingering Illness
    BISListTable[50702] = {}
    BISListTable[50702].bis = {}
    table.insert(BISListTable[50702].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50702].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50702].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50702].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[50702].bis, {'WARLOCK', 'Demonology'})
    
    -- --------------------- Legs ---------------------
    
    -- 50612 - Legguards of Lost Hope
    BISListTable[50612] = {}
    BISListTable[50612].bis = {}
    table.insert(BISListTable[50612].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50612].bis, {'PALADIN', 'Protection'})
    
    -- 50624 - Scourge Reaver's Legplates
    BISListTable[50624] = {}
    BISListTable[50624].bis = {}
    table.insert(BISListTable[50624].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    
    -- 49904 - Pillars of Might
    BISListTable[49904] = {}
    BISListTable[49904].bis = {}
    table.insert(BISListTable[49904].bis, {'PALADIN', 'Protection'})
    
    -- 50645 - Leggings of Northern Lights
    BISListTable[50645] = {}
    BISListTable[50645].bis = {}
    table.insert(BISListTable[50645].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[50645].bis, {'HUNTER', 'Survival'})
    
    -- 50697 - Gangrenous Leggings
    BISListTable[50697] = {}
    BISListTable[50697].bis = {}
    table.insert(BISListTable[50697].bis, {'ROGUE', 'Combat'})
    
    -- 50694 - Plaguebringer's Stained Pants
    BISListTable[50694] = {}
    BISListTable[50694].bis = {}
    table.insert(BISListTable[50694].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50694].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50694].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[50694].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50694].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50694].bis, {'WARLOCK', 'Affliction'})
    
    -- --------------------- Boots ---------------------
    
    -- 54579 - Treads of Impending Resurrection
    BISListTable[54579] = {}
    BISListTable[54579].bis = {}
    table.insert(BISListTable[54579].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[54579].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[54579].bis, {'WARRIOR', 'Protection'})
    
    -- 50625 - Grinning Skull Greatboots
    BISListTable[50625] = {}
    BISListTable[50625].bis = {}
    table.insert(BISListTable[50625].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50625].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50625].bis, {'WARRIOR', 'Protection'})
    
    -- 54578 - Apocalypse's Advance
    BISListTable[54578] = {}
    BISListTable[54578].bis = {}
    table.insert(BISListTable[54578].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[54578].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[54578].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[54578].bis, {'WARRIOR', 'Fury'})
    
    -- 50639 - Blood-Soaked Saronite Stompers
    BISListTable[50639] = {}
    BISListTable[50639].bis = {}
    table.insert(BISListTable[50639].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[50639].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[50639].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[50639].bis, {'WARRIOR', 'Fury'})
    
    -- 54586 - Foreshadow Steps
    BISListTable[54586] = {}
    BISListTable[54586].bis = {}
    table.insert(BISListTable[54586].bis, {'PALADIN', 'Holy'})
    
    -- 50652 - Necrophotic Greaves
    BISListTable[50652] = {}
    BISListTable[50652].bis = {}
    table.insert(BISListTable[50652].bis, {'SHAMAN', 'Elemental'})
    
    -- 54577 - Returning Footfalls
    BISListTable[54577] = {}
    BISListTable[54577].bis = {}
    table.insert(BISListTable[54577].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[54577].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[54577].bis, {'SHAMAN', 'Enhancement'})
    
    -- 50711 - Treads of the Wasteland
    BISListTable[50711] = {}
    BISListTable[50711].bis = {}
    table.insert(BISListTable[50711].bis, {'SHAMAN', 'Spellhance'})
    
    -- 50607 - Frostbitten Fur Boots
    BISListTable[50607] = {}
    BISListTable[50607].bis = {}
    table.insert(BISListTable[50607].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50607].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50607].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50607].bis, {'ROGUE', 'Assassin'})
    
    -- 50665 - Boots of Unnatural Growth
    BISListTable[50665] = {}
    BISListTable[50665].bis = {}
    table.insert(BISListTable[50665].bis, {'DRUID', 'Restoration'})
    
    -- 50699 - Plague Scientist's Boots
    BISListTable[50699] = {}
    BISListTable[50699].bis = {}
    table.insert(BISListTable[50699].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50699].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50699].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50699].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50699].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50699].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[50699].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[50699].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[50699].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50699].bis, {'WARLOCK', 'Affliction'})
    table.insert(BISListTable[50699].bis, {'DRUID', 'Restoration'})
    
    -- --------------------- Rings ---------------------
    
    -- 50622 - Devium's Eternally Cold Ring
    BISListTable[50622] = {}
    BISListTable[50622].bis = {}
    table.insert(BISListTable[50622].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50622].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50622].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50622].bis, {'WARRIOR', 'Protection'})
    
    -- 50642 - Juggernaut Band
    BISListTable[50642] = {}
    BISListTable[50642].bis = {}
    table.insert(BISListTable[50642].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50642].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50642].bis, {'WARRIOR', 'Protection'})
    
    -- 50693 - Might of Blight
    BISListTable[50693] = {}
    BISListTable[50693].bis = {}
    table.insert(BISListTable[50693].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[50693].bis, {'DEATHKNIGHT', 'Frost DPS'})
    
    -- 50664 - Ring of Rapid Ascent
    BISListTable[50664] = {}
    BISListTable[50664].bis = {}
    table.insert(BISListTable[50664].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50664].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50664].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50664].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[50664].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50664].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50664].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[50664].bis, {'WARLOCK', 'Affliction'})
    
    -- 50714 - Valanar's Other Signet Ring
    BISListTable[50714] = {}
    BISListTable[50714].bis = {}
    table.insert(BISListTable[50714].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50714].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50714].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50714].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50714].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50714].bis, {'WARLOCK', 'Affliction'})
    
    -- 54576 - Signet of Twilight
    BISListTable[54576] = {}
    BISListTable[54576].bis = {}
    table.insert(BISListTable[54576].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[54576].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[54576].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[54576].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[54576].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[54576].bis, {'ROGUE', 'Assassin'})
    table.insert(BISListTable[54576].bis, {'SHAMAN', 'Spellhance'})
    table.insert(BISListTable[54576].bis, {'SHAMAN', 'Enhancement'})
    
    -- 50604 - Band of the Bone Colossus
    BISListTable[50604] = {}
    BISListTable[50604].bis = {}
    table.insert(BISListTable[50604].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50604].bis, {'ROGUE', 'Assassin'})
    table.insert(BISListTable[50604].bis, {'SHAMAN', 'Enhancement'})
    
    -- 50618 - Frostbrood Sapphire Ring
    BISListTable[50618] = {}
    BISListTable[50618].bis = {}
    table.insert(BISListTable[50618].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50618].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[50618].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[50618].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50618].bis, {'WARRIOR', 'Fury'})
    
    -- 50636 - Memory of Malygos
    BISListTable[50636] = {}
    BISListTable[50636].bis = {}
    table.insert(BISListTable[50636].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[50636].bis, {'PRIEST', 'Holy'})
    
    -- 54585 - Ring of Phased Regeneration
    BISListTable[54585] = {}
    BISListTable[54585].bis = {}
    table.insert(BISListTable[54585].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[54585].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[54585].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[54585].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[54585].bis, {'SHAMAN', 'Restoration'})
    
    -- 50678 - Seal of Many Mouths
    BISListTable[50678] = {}
    BISListTable[50678].bis = {}
    table.insert(BISListTable[50678].bis, {'PALADIN', 'Retribution'})
    
    -- 50610 - Marrowgar's Frigid Eye
    BISListTable[50610] = {}
    BISListTable[50610].bis = {}
    table.insert(BISListTable[50610].bis, {'PALADIN', 'Holy'})
    
    -- 50644 - Ring of Maddening Whispers
    BISListTable[50644] = {}
    BISListTable[50644].bis = {}
    table.insert(BISListTable[50644].bis, {'PRIEST', 'Discipline'})
    
    -- 50614 - Loop of the Endless Labyrinth
    BISListTable[50614] = {}
    BISListTable[50614].bis = {}
    table.insert(BISListTable[50614].bis, {'SHAMAN', 'Elemental'})
    
    -- --------------------- Trinkets ---------------------
    
    -- 50364 - Sindragosa's Flawless Fang
    BISListTable[50364] = {}
    BISListTable[50364].bis = {}
    table.insert(BISListTable[50364].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50364].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50364].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50364].bis, {'WARRIOR', 'Protection'})
    
    -- 54591 - Petrified Twilight Scale
    BISListTable[54591] = {}
    BISListTable[54591].bis = {}
    table.insert(BISListTable[54591].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[54591].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[54591].bis, {'WARRIOR', 'Protection'})
    
    -- 47451 - Juggernaut's Vitality
    BISListTable[47451] = {}
    BISListTable[47451].bis = {}
    table.insert(BISListTable[47451].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[47451].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[47451].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[47451].bis, {'WARRIOR', 'Protection'})
    
    -- 50363 - Deathbringer's Will
    BISListTable[50363] = {}
    BISListTable[50363].bis = {}
    table.insert(BISListTable[50363].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[50363].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[50363].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50363].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[50363].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[50363].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50363].bis, {'SHAMAN', 'Enhancement'})
    table.insert(BISListTable[50363].bis, {'WARRIOR', 'Fury'})
    
    -- 54590 - Sharpened Twilight Scale
    BISListTable[54590] = {}
    BISListTable[54590].bis = {}
    table.insert(BISListTable[54590].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[54590].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[54590].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[54590].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[54590].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[54590].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[54590].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[54590].bis, {'ROGUE', 'Assassin'})
    table.insert(BISListTable[54590].bis, {'SHAMAN', 'Spellhance'})
    table.insert(BISListTable[54590].bis, {'SHAMAN', 'Enhancement'})
    table.insert(BISListTable[54590].bis, {'WARRIOR', 'Fury'})
    
    -- 47464 - Death's Choice
    BISListTable[47464] = {}
    BISListTable[47464].bis = {}
    table.insert(BISListTable[47464].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    
    -- 50365 - Phylactery of the Nameless Lich
    BISListTable[50365] = {}
    BISListTable[50365].bis = {}
    table.insert(BISListTable[50365].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50365].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50365].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50365].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[50365].bis, {'SHAMAN', 'Spellhance'})
    table.insert(BISListTable[50365].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50365].bis, {'WARLOCK', 'Affliction'})
    
    -- 50348 - Dislodged Foreign Object
    BISListTable[50348] = {}
    BISListTable[50348].bis = {}
    table.insert(BISListTable[50348].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50348].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50348].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50348].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50348].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50348].bis, {'WARLOCK', 'Affliction'})
    
    -- 54588 - Charred Twilight Scale
    BISListTable[54588] = {}
    BISListTable[54588].bis = {}
    table.insert(BISListTable[54588].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[54588].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[54588].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[54588].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[54588].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[54588].bis, {'SHAMAN', 'Spellhance'})
    table.insert(BISListTable[54588].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[54588].bis, {'WARLOCK', 'Affliction'})
    
    -- 50366 - Althor's Abacus
    BISListTable[50366] = {}
    BISListTable[50366].bis = {}
    table.insert(BISListTable[50366].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[50366].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50366].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[50366].bis, {'SHAMAN', 'Restoration'})
    
    -- 47059 - Solace of the Defeated
    BISListTable[47059] = {}
    BISListTable[47059].bis = {}
    table.insert(BISListTable[47059].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[47059].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[47059].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[47059].bis, {'SHAMAN', 'Restoration'})
    
    -- 54589 - Glowing Twilight Scale
    BISListTable[54589] = {}
    BISListTable[54589].bis = {}
    table.insert(BISListTable[54589].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[54589].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[54589].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[54589].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[54589].bis, {'SHAMAN', 'Restoration'})
    
    -- 50706 - Tiny Abomination in a Jar
    BISListTable[50706] = {}
    BISListTable[50706].bis = {}
    table.insert(BISListTable[50706].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[50706].bis, {'ROGUE', 'Assassin'})
    table.insert(BISListTable[50706].bis, {'SHAMAN', 'Enhancement'})
    
    -- 46051 - Meteorite Crystal
    BISListTable[46051] = {}
    BISListTable[46051].bis = {}
    table.insert(BISListTable[46051].bis, {'PALADIN', 'Holy'})
    
    -- 50355 - Herkuml War Token
    BISListTable[50355] = {}
    BISListTable[50355].bis = {}
    table.insert(BISListTable[50355].bis, {'SHAMAN', 'Enhancement'})
    
    -- --------------------- Weapons ---------------------
    
    -- 49623 - Shadowmourne
    BISListTable[49623] = {}
    BISListTable[49623].bis = {}
    table.insert(BISListTable[49623].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[49623].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[49623].bis, {'PALADIN', 'Retribution'})
    table.insert(BISListTable[49623].bis, {'WARRIOR', 'Fury'})
    
    -- 50730 - Glorenzelg, High-Blade of the Silver Hand
    BISListTable[50730] = {}
    BISListTable[50730].bis = {}
    table.insert(BISListTable[50730].bis, {'DEATHKNIGHT', 'Blood Tank'})
    table.insert(BISListTable[50730].bis, {'DEATHKNIGHT', 'Unholy DPS'})
    table.insert(BISListTable[50730].bis, {'WARRIOR', 'Fury'})
    
    -- 50737 - Havoc's Call, Blade of Lordaeron Kings
    BISListTable[50737] = {}
    BISListTable[50737].bis = {}
    table.insert(BISListTable[50737].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[50737].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50737].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50737].bis, {'SHAMAN', 'Spellhance'})
    table.insert(BISListTable[50737].bis, {'SHAMAN', 'Enhancement'})
    table.insert(BISListTable[50737].bis, {'WARRIOR', 'Protection'})
    
    -- 50672 - Bloodvenom Blade
    BISListTable[50672] = {}
    BISListTable[50672].bis = {}
    table.insert(BISListTable[50672].bis, {'DEATHKNIGHT', 'Frost DPS'})
    table.insert(BISListTable[50672].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50672].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50672].bis, {'WARRIOR', 'Protection'})
    
    -- 50734 - Royal Scepter of Terenas II
    BISListTable[50734] = {}
    BISListTable[50734].bis = {}
    table.insert(BISListTable[50734].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50734].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[50734].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50734].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50734].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[50734].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[50734].bis, {'SHAMAN', 'Elemental'})
    table.insert(BISListTable[50734].bis, {'SHAMAN', 'Spellhance'})
    
    -- 50735 - Oathbinder, Charge of the Ranger-General
    BISListTable[50735] = {}
    BISListTable[50735].bis = {}
    table.insert(BISListTable[50735].bis, {'DRUID', 'Feral DPS'})
    table.insert(BISListTable[50735].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50735].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[50735].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[50735].bis, {'PALADIN', 'Retribution'})
    
    -- 50603 - Cryptmaker
    BISListTable[50603] = {}
    BISListTable[50603].bis = {}
    table.insert(BISListTable[50603].bis, {'DRUID', 'Feral Tank'})
    table.insert(BISListTable[50603].bis, {'WARRIOR', 'Fury'})
    
    -- 46017 - Val'anyr, Hammer of Ancient Kings
    BISListTable[46017] = {}
    BISListTable[46017].bis = {}
    table.insert(BISListTable[46017].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[46017].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[46017].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[46017].bis, {'SHAMAN', 'Restoration'})
    
    -- 50732 - Bloodsurge, Kel'Thuzad's Blade of Agony
    BISListTable[50732] = {}
    BISListTable[50732].bis = {}
    table.insert(BISListTable[50732].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50732].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50732].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[50732].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50732].bis, {'WARLOCK', 'Affliction'})
    
    -- 50654 - Scourgeborne Waraxe
    BISListTable[50654] = {}
    BISListTable[50654].bis = {}
    table.insert(BISListTable[50654].bis, {'ROGUE', 'Combat'})
    
    -- 50736 - Heaven's Fall, Kryss of a Thousand Lies
    BISListTable[50736] = {}
    BISListTable[50736].bis = {}
    table.insert(BISListTable[50736].bis, {'ROGUE', 'Assassin'})
    
    -- 50621 - Lungbreaker
    BISListTable[50621] = {}
    BISListTable[50621].bis = {}
    table.insert(BISListTable[50621].bis, {'ROGUE', 'Assassin'})
    
    -- 50685 - Trauma
    BISListTable[50685] = {}
    BISListTable[50685].bis = {}
    table.insert(BISListTable[50685].bis, {'DRUID', 'Restoration'})
    
    -- --------------------- Off-Hand ---------------------
    
    -- 50719 - Shadow Silk Spindle
    BISListTable[50719] = {}
    BISListTable[50719].bis = {}
    table.insert(BISListTable[50719].bis, {'DRUID', 'Balance'})
    table.insert(BISListTable[50719].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50719].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50719].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50719].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50719].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50719].bis, {'WARLOCK', 'Affliction'})
    
    -- 50635 - Sundial of Eternal Dusk
    BISListTable[50635] = {}
    BISListTable[50635].bis = {}
    table.insert(BISListTable[50635].bis, {'DRUID', 'Restoration'})
    table.insert(BISListTable[50635].bis, {'PRIEST', 'Holy'})
    
    -- 50616 - Bulwark of Smouldering Steel
    BISListTable[50616] = {}
    BISListTable[50616].bis = {}
    table.insert(BISListTable[50616].bis, {'PALADIN', 'Holy'})
    table.insert(BISListTable[50616].bis, {'SHAMAN', 'Restoration'})
    table.insert(BISListTable[50616].bis, {'SHAMAN', 'Elemental'})
    
    -- 50729 - Icecrown Glacial Wall
    BISListTable[50729] = {}
    BISListTable[50729].bis = {}
    table.insert(BISListTable[50729].bis, {'PALADIN', 'Protection'})
    table.insert(BISListTable[50729].bis, {'WARRIOR', 'Protection'})
    
    -- --------------------- Bow / Gun / Wand ---------------------
    
    -- 50733 - Fal'inrush, Defender of Quel'thalas
    BISListTable[50733] = {}
    BISListTable[50733].bis = {}
    table.insert(BISListTable[50733].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[50733].bis, {'HUNTER', 'Survival'})
    table.insert(BISListTable[50733].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[50733].bis, {'ROGUE', 'Assassin'})
    table.insert(BISListTable[50733].bis, {'WARRIOR', 'Fury'})
    
    -- 51940 - Windrunner's Heartseeker
    BISListTable[51940] = {}
    BISListTable[51940].bis = {}
    table.insert(BISListTable[51940].bis, {'HUNTER', 'Marksmanship'})
    table.insert(BISListTable[51940].bis, {'ROGUE', 'Combat'})
    table.insert(BISListTable[51940].bis, {'WARRIOR', 'Fury'})
    
    -- 50638 - Zod's Repeating Longbow
    BISListTable[50638] = {}
    BISListTable[50638].bis = {}
    table.insert(BISListTable[50638].bis, {'HUNTER', 'Survival'})
    
    -- 50684 - Corpse-Impaling Spike
    BISListTable[50684] = {}
    BISListTable[50684].bis = {}
    table.insert(BISListTable[50684].bis, {'MAGE', 'Fire'})
    table.insert(BISListTable[50684].bis, {'MAGE', 'Arcane'})
    table.insert(BISListTable[50684].bis, {'PRIEST', 'Shadow'})
    table.insert(BISListTable[50684].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50684].bis, {'PRIEST', 'Holy'})
    table.insert(BISListTable[50684].bis, {'WARLOCK', 'Demonology'})
    table.insert(BISListTable[50684].bis, {'WARLOCK', 'Affliction'})
    
    -- 50631 - Nightmare Ender
    BISListTable[50631] = {}
    BISListTable[50631].bis = {}
    table.insert(BISListTable[50631].bis, {'PRIEST', 'Discipline'})
    table.insert(BISListTable[50631].bis, {'PRIEST', 'Holy'})
    
    -- 51834 - Dreamhunter's Carbine
    BISListTable[51834] = {}
    BISListTable[51834].bis = {}
    table.insert(BISListTable[51834].bis, {'WARRIOR', 'Protection'})
    
    return BISListTable
end
