GEAR = LibStub("AceAddon-3.0"):NewAddon("GEAR", "AceConsole-3.0", "AceComm-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")

function GEAR:QDKP2_BIS_List_Creator()
    BISListTable = {}
    BISListTable[50713] = {}
    BISListTable[50713].bis = {}
    table.insert(BISListTable[50713].bis, {'ROGUE','Assassin'})
    BISListTable[50724] = {}
    BISListTable[50724].bis = {}
    table.insert(BISListTable[50724].bis, {'DRUID','Balance'})
    table.insert(BISListTable[50724].bis, {'MAGE','Fire'})
    table.insert(BISListTable[50724].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[50724].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[50724].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[50724].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[50724].bis, {'SHAMAN','Restoration'})
    BISListTable[50609] = {}
    BISListTable[50609].bis = {}
    table.insert(BISListTable[50609].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[50609].bis, {'PRIEST','Holy'})
    BISListTable[50658] = {}
    BISListTable[50658].bis = {}
    table.insert(BISListTable[50658].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[50658].bis, {'SHAMAN','Spellhance'})
    table.insert(BISListTable[50658].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[50658].bis, {'WARLOCK','Afflication'})
    BISListTable[50633] = {}
    BISListTable[50633].bis = {}
    table.insert(BISListTable[50633].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[50633].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[50633].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50633].bis, {'ROGUE','Assassin'})
    table.insert(BISListTable[50633].bis, {'SHAMAN','Enhancement'})
    BISListTable[54581] = {}
    BISListTable[54581].bis = {}
    table.insert(BISListTable[54581].bis, {'WARRIOR','Fury'})
    table.insert(BISListTable[54581].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[54581].bis, {'PALADIN','Retribution'})
    BISListTable[50682] = {}
    BISListTable[50682].bis = {}
    table.insert(BISListTable[50682].bis, {'DEATHKNIGHT','Blood Tank'})
    table.insert(BISListTable[50682].bis, {'DRUID','Feral Tank'})
    table.insert(BISListTable[50682].bis, {'PALADIN','Protection'})
    BISListTable[50698] = {}
    BISListTable[50698].bis = {}
    table.insert(BISListTable[50698].bis, {'SHAMAN','Elemental'})
    BISListTable[54583] = {}
    BISListTable[54583].bis = {}
    table.insert(BISListTable[54583].bis, {'DRUID','Balance'})
    table.insert(BISListTable[54583].bis, {'MAGE','Fire'})
    table.insert(BISListTable[54583].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[54583].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[54583].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[54583].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[54583].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[54583].bis, {'SHAMAN','Restoration'})
    table.insert(BISListTable[54583].bis, {'SHAMAN','Spellhance'})
    table.insert(BISListTable[54583].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[54583].bis, {'WARLOCK','Afflication'})
    BISListTable[50668] = {}
    BISListTable[50668].bis = {}
    table.insert(BISListTable[50668].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[50668].bis, {'PRIEST','Holy'})
    BISListTable[50653] = {}
    BISListTable[50653].bis = {}
    table.insert(BISListTable[50653].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[50653].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[50653].bis, {'PALADIN','Retribution'})
    table.insert(BISListTable[50653].bis, {'ROGUE','Assassin'})
    table.insert(BISListTable[50653].bis, {'SHAMAN','Enhancement'})
    table.insert(BISListTable[50653].bis, {'WARRIOR','Fury'})
    BISListTable[47545] = {}
    BISListTable[47545].bis = {}
    table.insert(BISListTable[47545].bis, {'DEATHKNIGHT','Frost DPS'})
    table.insert(BISListTable[47545].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[47545].bis, {'ROGUE','Combat'})
    BISListTable[50677] = {}
    BISListTable[50677].bis = {}
    table.insert(BISListTable[50677].bis, {'DEATHKNIGHT','Unholy DPS'})
    table.insert(BISListTable[50677].bis, {'DEATHKNIGHT','Blood DPS'})
    BISListTable[50718] = {}
    BISListTable[50718].bis = {}
    table.insert(BISListTable[50718].bis, {'DEATHKNIGHT','Blood Tank'})
    BISListTable[50717] = {}
    BISListTable[50717].bis = {}
    table.insert(BISListTable[50717].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[50717].bis, {'PRIEST','Holy'})
    BISListTable[50629] = {}
    BISListTable[50629].bis = {}
    table.insert(BISListTable[50629].bis, {'MAGE','Fire'})
    BISListTable[50656] = {}
    BISListTable[50656].bis = {}
    table.insert(BISListTable[50656].bis, {'DRUID','Feral Tank'})
    table.insert(BISListTable[50656].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50656].bis, {'ROGUE','Assassin'})
    BISListTable[50680] = {}
    BISListTable[50680].bis = {}
    table.insert(BISListTable[50680].bis, {'PALADIN','Holy'})
    BISListTable[54582] = {}
    BISListTable[54582].bis = {}
    table.insert(BISListTable[54582].bis, {'DRUID','Balance'})
    table.insert(BISListTable[54582].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[54582].bis, {'MAGE','Fire'})
    table.insert(BISListTable[54582].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[54582].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[54582].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[54582].bis, {'PRIEST','Holy'})
    table.insert(BISListTable[54582].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[54582].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[54582].bis, {'WARLOCK','Afflication'})
    BISListTable[50670] = {}
    BISListTable[50670].bis = {}
    table.insert(BISListTable[50670].bis, {'DEATHKNIGHT','Frost DPS'})
    table.insert(BISListTable[50670].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50670].bis, {'WARRIOR','Fury'})
    BISListTable[54580] = {}
    BISListTable[54580].bis = {}
    table.insert(BISListTable[54580].bis, {'DEATHKNIGHT','Unholy DPS'})
    table.insert(BISListTable[54580].bis, {'DEATHKNIGHT','Blood DPS'})
    table.insert(BISListTable[54580].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[54580].bis, {'DRUID','Feral Tank'})
    table.insert(BISListTable[54580].bis, {'PALADIN','Retribution'})
    table.insert(BISListTable[54580].bis, {'ROGUE','Assassin'})
    table.insert(BISListTable[54580].bis, {'SHAMAN','Spellhance'})
    BISListTable[54584] = {}
    BISListTable[54584].bis = {}
    table.insert(BISListTable[54584].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[54584].bis, {'SHAMAN','Restoration'})
    BISListTable[50655] = {}
    BISListTable[50655].bis = {}
    table.insert(BISListTable[50655].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[50655].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[50655].bis, {'SHAMAN','Enhancement'})
    BISListTable[50611] = {}
    BISListTable[50611].bis = {}
    table.insert(BISListTable[50611].bis, {'DEATHKNIGHT','Blood Tank'})
    BISListTable[50722] = {}
    BISListTable[50722].bis = {}
    table.insert(BISListTable[50722].bis, {'PRIEST','Discipline'})
    BISListTable[50675] = {}
    BISListTable[50675].bis = {}
    table.insert(BISListTable[50675].bis, {'DEATHKNIGHT','Frost DPS'})
    table.insert(BISListTable[50675].bis, {'DEATHKNIGHT','Blood DPS'})
    table.insert(BISListTable[50675].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[50675].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50675].bis, {'WARRIOR','Fury'})
    BISListTable[50703] = {}
    BISListTable[50703].bis = {}
    table.insert(BISListTable[50703].bis, {'SHAMAN','Restoration'})
    BISListTable[50619] = {}
    BISListTable[50619].bis = {}
    table.insert(BISListTable[50619].bis, {'SHAMAN','Enhancement'})
    table.insert(BISListTable[50619].bis, {'SHAMAN','Spellhance'})
    BISListTable[50690] = {}
    BISListTable[50690].bis = {}
    table.insert(BISListTable[50690].bis, {'PALADIN','Retribution'})
    BISListTable[50650] = {}
    BISListTable[50650].bis = {}
    table.insert(BISListTable[50650].bis, {'PALADIN','Holy'})
    BISListTable[50613] = {}
    BISListTable[50613].bis = {}
    table.insert(BISListTable[50613].bis, {'DRUID','Balance'})
    table.insert(BISListTable[50613].bis, {'MAGE','Fire'})
    table.insert(BISListTable[50613].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[50613].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[50613].bis, {'PRIEST','Holy'})
    table.insert(BISListTable[50613].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[50613].bis, {'WARLOCK','Afflication'})
    BISListTable[50702] = {}
    BISListTable[50702].bis = {}
    table.insert(BISListTable[50702].bis, {'PRIEST','Discipline'})
    BISListTable[50707] = {}
    BISListTable[50707].bis = {}
    table.insert(BISListTable[50707].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[50707].bis, {'DRUID','Feral Tank'})
    table.insert(BISListTable[50707].bis, {'PALADIN','Retribution'})
    table.insert(BISListTable[50707].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50707].bis, {'ROGUE','Assassin'})
    BISListTable[50705] = {}
    BISListTable[50705].bis = {}
    table.insert(BISListTable[50705].bis, {'DRUID','Restoration'})
    BISListTable[50688] = {}
    BISListTable[50688].bis = {}
    table.insert(BISListTable[50688].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[50688].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[50688].bis, {'SHAMAN','Enhancement'})
    BISListTable[54587] = {}
    BISListTable[54587].bis = {}
    table.insert(BISListTable[54587].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[54587].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[54587].bis, {'SHAMAN','Restoration'})
    table.insert(BISListTable[54587].bis, {'SHAMAN','Spellhance'})
    BISListTable[50620] = {}
    BISListTable[50620].bis = {}
    table.insert(BISListTable[50620].bis, {'DEATHKNIGHT','Frost DPS'})
    table.insert(BISListTable[50620].bis, {'DEATHKNIGHT','Unholy DPS'})
    table.insert(BISListTable[50620].bis, {'DEATHKNIGHT','Blood DPS'})
    table.insert(BISListTable[50620].bis, {'WARRIOR','Fury'})
    BISListTable[50691] = {}
    BISListTable[50691].bis = {}
    table.insert(BISListTable[50691].bis, {'DEATHKNIGHT','Blood Tank'})
    BISListTable[50694] = {}
    BISListTable[50694].bis = {}
    table.insert(BISListTable[50694].bis, {'DRUID','Balance'})
    table.insert(BISListTable[50694].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[50694].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[50694].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[50694].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[50694].bis, {'WARLOCK','Afflication'})
    BISListTable[50697] = {}
    BISListTable[50697].bis = {}
    table.insert(BISListTable[50697].bis, {'ROGUE','Combat'})
    BISListTable[50645] = {}
    BISListTable[50645].bis = {}
    table.insert(BISListTable[50645].bis, {'HUNTER','Marksmanship'})
    BISListTable[50624] = {}
    BISListTable[50624].bis = {}
    table.insert(BISListTable[50624].bis, {'DEATHKNIGHT','Unholy DPS'})
    BISListTable[50612] = {}
    BISListTable[50612].bis = {}
    table.insert(BISListTable[50612].bis, {'DEATHKNIGHT','Blood Tank'})
    BISListTable[50699] = {}
    BISListTable[50699].bis = {}
    table.insert(BISListTable[50699].bis, {'DRUID','Balance'})
    table.insert(BISListTable[50699].bis, {'MAGE','Fire'})
    table.insert(BISListTable[50699].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[50699].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[50699].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[50699].bis, {'PRIEST','Holy'})
    table.insert(BISListTable[50699].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[50699].bis, {'SHAMAN','Restoration'})
    table.insert(BISListTable[50699].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[50699].bis, {'WARLOCK','Afflication'})
    BISListTable[50607] = {}
    BISListTable[50607].bis = {}
    table.insert(BISListTable[50607].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[50607].bis, {'DRUID','Feral Tank'})
    table.insert(BISListTable[50607].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50607].bis, {'ROGUE','Assassin'})
    BISListTable[50665] = {}
    BISListTable[50665].bis = {}
    table.insert(BISListTable[50665].bis, {'DRUID','Restoration'})
    BISListTable[54577] = {}
    BISListTable[54577].bis = {}
    table.insert(BISListTable[54577].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[54577].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[54577].bis, {'SHAMAN','Enhancement'})
    table.insert(BISListTable[54577].bis, {'WARRIOR','Fury'})
    BISListTable[50711] = {}
    BISListTable[50711].bis = {}
    table.insert(BISListTable[50711].bis, {'SHAMAN','Spellhance'})
    BISListTable[54578] = {}
    BISListTable[54578].bis = {}
    table.insert(BISListTable[54578].bis, {'DEATHKNIGHT','Frost DPS'})
    table.insert(BISListTable[54578].bis, {'DEATHKNIGHT','Blood DPS'})
    table.insert(BISListTable[54578].bis, {'DEATHKNIGHT','Unholy DPS'})
    table.insert(BISListTable[54578].bis, {'PALADIN','Retribution'})
    table.insert(BISListTable[54578].bis, {'WARRIOR','Fury'})
    BISListTable[54586] = {}
    BISListTable[54586].bis = {}
    table.insert(BISListTable[54586].bis, {'PALADIN','Holy'})
    BISListTable[54579] = {}
    BISListTable[54579].bis = {}
    table.insert(BISListTable[54579].bis, {'DEATHKNIGHT','Blood Tank'})
    table.insert(BISListTable[54579].bis, {'PALADIN','Protection'})
    table.insert(BISListTable[54579].bis, {'WARRIOR','Protection'})
    BISListTable[50664] = {}
    BISListTable[50664].bis = {}
    table.insert(BISListTable[50664].bis, {'DRUID','Balance'})
    table.insert(BISListTable[50664].bis, {'MAGE','Fire'})
    table.insert(BISListTable[50664].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[50664].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[50664].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[50664].bis, {'SHAMAN','Restoration'})
    table.insert(BISListTable[50664].bis, {'WARLOCK','Afflication'})
    BISListTable[54585] = {}
    BISListTable[54585].bis = {}
    table.insert(BISListTable[54585].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[54585].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[54585].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[54585].bis, {'PRIEST','Holy'})
    table.insert(BISListTable[54585].bis, {'SHAMAN','Restoration'})
    BISListTable[50636] = {}
    BISListTable[50636].bis = {}
    table.insert(BISListTable[50636].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[50636].bis, {'PRIEST','Holy'})
    BISListTable[50644] = {}
    BISListTable[50644].bis = {}
    table.insert(BISListTable[50644].bis, {'PRIEST','Discipline'})
    BISListTable[50714] = {}
    BISListTable[50714].bis = {}
    table.insert(BISListTable[50714].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[50714].bis, {'WARLOCK','Demonology'})
    BISListTable[54576] = {}
    BISListTable[54576].bis = {}
    table.insert(BISListTable[54576].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[54576].bis, {'DRUID','Feral Tank'})
    table.insert(BISListTable[54576].bis, {'PALADIN','Retribution'})
    table.insert(BISListTable[54576].bis, {'ROGUE','Assassin'})
    table.insert(BISListTable[54576].bis, {'SHAMAN','Enhancement'})
    table.insert(BISListTable[54576].bis, {'SHAMAN','Spellhance'})
    BISListTable[50618] = {}
    BISListTable[50618].bis = {}
    table.insert(BISListTable[50618].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[50618].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[50618].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50618].bis, {'WARRIOR','Fury'})
    BISListTable[50614] = {}
    BISListTable[50614].bis = {}
    table.insert(BISListTable[50614].bis, {'SHAMAN','Elemental'})
    BISListTable[50693] = {}
    BISListTable[50693].bis = {}
    table.insert(BISListTable[50693].bis, {'DEATHKNIGHT','Frost DPS'})
    table.insert(BISListTable[50693].bis, {'DEATHKNIGHT','Unholy DPS'})
    table.insert(BISListTable[50693].bis, {'DEATHKNIGHT','Blood DPS'})
    BISListTable[50622] = {}
    BISListTable[50622].bis = {}
    table.insert(BISListTable[50622].bis, {'DEATHKNIGHT','Blood Tank'})
    table.insert(BISListTable[50622].bis, {'DRUID','Feral Tank'})
    table.insert(BISListTable[50622].bis, {'PALADIN','Protection'})
    table.insert(BISListTable[50622].bis, {'WARRIOR','Protection'})
    BISListTable[50348] = {}
    BISListTable[50348].bis = {}
    table.insert(BISListTable[50348].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[50348].bis, {'WARLOCK','Afflication'})
    BISListTable[50365] = {}
    BISListTable[50365].bis = {}
    table.insert(BISListTable[50365].bis, {'DRUID','Balance'})
    table.insert(BISListTable[50365].bis, {'MAGE','Fire'})
    table.insert(BISListTable[50365].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[50365].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[50365].bis, {'WARLOCK','Demonology'})
    BISListTable[54588] = {}
    BISListTable[54588].bis = {}
    table.insert(BISListTable[54588].bis, {'DRUID','Balance'})
    table.insert(BISListTable[54588].bis, {'MAGE','Fire'})
    table.insert(BISListTable[54588].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[54588].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[54588].bis, {'SHAMAN','Spellhance'})
    table.insert(BISListTable[54588].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[54588].bis, {'WARLOCK','Afflication'})
    BISListTable[50366] = {}
    BISListTable[50366].bis = {}
    table.insert(BISListTable[50366].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[50366].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[50366].bis, {'PRIEST','Holy'})
    BISListTable[54589] = {}
    BISListTable[54589].bis = {}
    table.insert(BISListTable[54589].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[54589].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[54589].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[54589].bis, {'PRIEST','Holy'})
    table.insert(BISListTable[54589].bis, {'SHAMAN','Restoration'})
    BISListTable[50706] = {}
    BISListTable[50706].bis = {}
    table.insert(BISListTable[50706].bis, {'PALADIN','Retribution'})
    table.insert(BISListTable[50706].bis, {'ROGUE','Assassin'})
    BISListTable[50363] = {}
    BISListTable[50363].bis = {}
    table.insert(BISListTable[50363].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[50363].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[50363].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50363].bis, {'WARRIOR','Fury'})
    BISListTable[54590] = {}
    BISListTable[54590].bis = {}
    table.insert(BISListTable[54590].bis, {'DEATHKNIGHT','Frost DPS'})
    table.insert(BISListTable[54590].bis, {'DEATHKNIGHT','Unholy DPS'})
    table.insert(BISListTable[54590].bis, {'DEATHKNIGHT','Blood DPS'})
    table.insert(BISListTable[54590].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[54590].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[54590].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[54590].bis, {'PALADIN','Retribution'})
    table.insert(BISListTable[54590].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[54590].bis, {'ROGUE','Assassin'})
    table.insert(BISListTable[54590].bis, {'SHAMAN','Enhancement'})
    table.insert(BISListTable[54590].bis, {'SHAMAN','Spellhance'})
    table.insert(BISListTable[54590].bis, {'WARRIOR','Fury'})
    BISListTable[50364] = {}
    BISListTable[50364].bis = {}
    table.insert(BISListTable[50364].bis, {'DEATHKNIGHT','Blood Tank'})
    table.insert(BISListTable[50364].bis, {'DRUID','Feral Tank'})
    table.insert(BISListTable[50364].bis, {'PALADIN','Protection'})
    table.insert(BISListTable[50364].bis, {'WARRIOR','Protection'})
    BISListTable[54591] = {}
    BISListTable[54591].bis = {}
    table.insert(BISListTable[54591].bis, {'DEATHKNIGHT','Blood Tank'})
    table.insert(BISListTable[54591].bis, {'PALADIN','Protection'})
    table.insert(BISListTable[54591].bis, {'WARRIOR','Protection'})
    BISListTable[50734] = {}
    BISListTable[50734].bis = {}
    table.insert(BISListTable[50734].bis, {'DRUID','Balance'})
    table.insert(BISListTable[50734].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[50734].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[50734].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[50734].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[50734].bis, {'PRIEST','Holy'})
    table.insert(BISListTable[50734].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[50734].bis, {'SHAMAN','Restoration'})
    table.insert(BISListTable[50734].bis, {'SHAMAN','Spellhance'})
    BISListTable[50732] = {}
    BISListTable[50732].bis = {}
    table.insert(BISListTable[50732].bis, {'MAGE','Fire'})
    table.insert(BISListTable[50732].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[50732].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[50732].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[50732].bis, {'WARLOCK','Afflication'})
    BISListTable[50685] = {}
    BISListTable[50685].bis = {}
    table.insert(BISListTable[50685].bis, {'DRUID','Restoration'})
    BISListTable[50737] = {}
    BISListTable[50737].bis = {}
    table.insert(BISListTable[50737].bis, {'DEATHKNIGHT','Frost DPS'})
    table.insert(BISListTable[50737].bis, {'PALADIN','Protection'})
    table.insert(BISListTable[50737].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50737].bis, {'SHAMAN','Enhancement'})
    table.insert(BISListTable[50737].bis, {'SHAMAN','Spellhance'})
    BISListTable[50672] = {}
    BISListTable[50672].bis = {}
    table.insert(BISListTable[50672].bis, {'PALADIN','Protection'})
    table.insert(BISListTable[50672].bis, {'WARRIOR','Protection'})
    BISListTable[50736] = {}
    BISListTable[50736].bis = {}
    table.insert(BISListTable[50736].bis, {'ROGUE','Assassin'})
    BISListTable[50735] = {}
    BISListTable[50735].bis = {}
    table.insert(BISListTable[50735].bis, {'DRUID','Feral DPS'})
    table.insert(BISListTable[50735].bis, {'DRUID','Feral Tank'})
    table.insert(BISListTable[50735].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[50735].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[50735].bis, {'PALADIN','Retribution'})
    BISListTable[50730] = {}
    BISListTable[50730].bis = {}
    table.insert(BISListTable[50730].bis, {'DEATHKNIGHT','Blood Tank'})
    table.insert(BISListTable[50730].bis, {'WARRIOR','Fury'})
    BISListTable[50603] = {}
    BISListTable[50603].bis = {}
    table.insert(BISListTable[50603].bis, {'WARRIOR','Fury'})
    BISListTable[50738] = {}
    BISListTable[50738].bis = {}
    table.insert(BISListTable[50738].bis, {'PALADIN','Protection'})
    table.insert(BISListTable[50738].bis, {'WARRIOR','Protection'})
    BISListTable[50719] = {}
    BISListTable[50719].bis = {}
    table.insert(BISListTable[50719].bis, {'DRUID','Balance'})
    table.insert(BISListTable[50719].bis, {'MAGE','Fire'})
    table.insert(BISListTable[50719].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[50719].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[50719].bis, {'PRIEST','Discipline'})
    table.insert(BISListTable[50719].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[50719].bis, {'WARLOCK','Afflication'})
    BISListTable[50635] = {}
    BISListTable[50635].bis = {}
    table.insert(BISListTable[50635].bis, {'DRUID','Restoration'})
    table.insert(BISListTable[50635].bis, {'PRIEST','Holy'})
    BISListTable[50654] = {}
    BISListTable[50654].bis = {}
    table.insert(BISListTable[50654].bis, {'ROGUE','Combat'})
    BISListTable[50621] = {}
    BISListTable[50621].bis = {}
    table.insert(BISListTable[50621].bis, {'ROGUE','Assassin'})
    BISListTable[50616] = {}
    BISListTable[50616].bis = {}
    table.insert(BISListTable[50616].bis, {'PALADIN','Holy'})
    table.insert(BISListTable[50616].bis, {'SHAMAN','Elemental'})
    table.insert(BISListTable[50616].bis, {'SHAMAN','Restoration'})
    BISListTable[50733] = {}
    BISListTable[50733].bis = {}
    table.insert(BISListTable[50733].bis, {'HUNTER','Marksmanship'})
    table.insert(BISListTable[50733].bis, {'HUNTER','Survival'})
    table.insert(BISListTable[50733].bis, {'ROGUE','Combat'})
    table.insert(BISListTable[50733].bis, {'ROGUE','Assassin'})
    BISListTable[50729] = {}
    BISListTable[50729].bis = {}
    table.insert(BISListTable[50729].bis, {'PALADIN','Protection'})
    table.insert(BISListTable[50729].bis, {'WARRIOR','Protection'})
    BISListTable[50684] = {}
    BISListTable[50684].bis = {}
    table.insert(BISListTable[50684].bis, {'MAGE','Fire'})
    table.insert(BISListTable[50684].bis, {'MAGE','Arcane'})
    table.insert(BISListTable[50684].bis, {'PRIEST','Shadow'})
    table.insert(BISListTable[50684].bis, {'PRIEST','Holy'})
    table.insert(BISListTable[50684].bis, {'WARLOCK','Demonology'})
    table.insert(BISListTable[50684].bis, {'WARLOCK','Afflication'})
    BISListTable[50631] = {}
    BISListTable[50631].bis = {}
    table.insert(BISListTable[50631].bis, {'PRIEST','Discipline'})
    return BISListTable
end
