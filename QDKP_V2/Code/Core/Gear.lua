GEAR = LibStub("AceAddon-3.0"):NewAddon("GEAR", "AceConsole-3.0", "AceComm-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")

function GEAR:QDKP2_BIS_List_Creator()
	BISListTable = {}
	BISListTable[50647] = {}
	BISListTable[50647].pre = {}
	table.insert(BISListTable[50647].pre, {'DEATHKNIGHT','Frost'})
	table.insert(BISListTable[50647].pre, {'DEATHKNIGHT','Unholy'})
	table.insert(BISListTable[50647].pre, {'DRUID','Feral DPS'})
	table.insert(BISListTable[50647].pre, {'PALADIN','Retribution'})
	BISListTable[50675] = {}
	BISListTable[50675].bis = {}
	table.insert(BISListTable[50675].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[50675].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50675].bis, {'WARRIOR','Fury'})
	BISListTable[50366] = {}
	BISListTable[50366].bis = {}
	table.insert(BISListTable[50366].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[50366].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[50366].bis, {'PRIEST','Holy'})
	BISListTable[50658] = {}
	BISListTable[50658].bis = {}
	table.insert(BISListTable[50658].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50658].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50658].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[50658].bis, {'WARLOCK','Destruction'})
	BISListTable[50619] = {}
	BISListTable[50619].bis = {}
	table.insert(BISListTable[50619].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[50619].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[50619].bis, {'SHAMAN','Spellhance'})
	BISListTable[54578] = {}
	BISListTable[54578].bis = {}
	table.insert(BISListTable[54578].bis, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[54578].bis, {'DEATHKNIGHT','Frost DPS'})
	table.insert(BISListTable[54578].bis, {'DEATHKNIGHT','Unholy DPS'})
	table.insert(BISListTable[54578].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[54578].bis, {'WARRIOR','Fury'})
	BISListTable[50398] = {}
	BISListTable[50398].bis = {}
	table.insert(BISListTable[50398].bis, {'DRUID','Balance'})
	table.insert(BISListTable[50398].bis, {'MAGE','Fire'})
	table.insert(BISListTable[50398].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50398].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50398].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50398].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50398].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[50398].bis, {'WARLOCK','Destruction'})
	BISListTable[52572] = {}
	BISListTable[52572].bis = {}
	table.insert(BISListTable[52572].bis, {'DEATHKNIGHT','Blood'})
	table.insert(BISListTable[52572].bis, {'DEATHKNIGHT','Frost'})
	table.insert(BISListTable[52572].bis, {'DEATHKNIGHT','Unholy'})
	table.insert(BISListTable[52572].bis, {'PALADIN','Ret Strength'})
	BISListTable[50402] = {}
	BISListTable[50402].bis = {}
	table.insert(BISListTable[50402].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[50402].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[50402].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[50402].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50402].bis, {'ROGUE','Assassination'})
	table.insert(BISListTable[50402].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[50402].bis, {'SHAMAN','Spellhance'})
	table.insert(BISListTable[50402].bis, {'WARRIOR','Fury'})
	BISListTable[50400] = {}
	BISListTable[50400].pre = {}
	table.insert(BISListTable[50400].pre, {'DRUID','Restoration'})
	table.insert(BISListTable[50400].pre, {'PALADIN','Holy'})
	table.insert(BISListTable[50400].pre, {'PRIEST','Discipline'})
	table.insert(BISListTable[50400].pre, {'PRIEST','Holy'})
	table.insert(BISListTable[50400].pre, {'SHAMAN','Restoration'})
	BISListTable[50707] = {}
	BISListTable[50707].bis = {}
	table.insert(BISListTable[50707].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[50707].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[50707].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[50707].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50707].bis, {'ROGUE','Assassination'})
	BISListTable[50604] = {}
	BISListTable[50604].pre = {}
	table.insert(BISListTable[50604].pre, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[50604].pre, {'SHAMAN','Spellhance'})
	BISListTable[50682] = {}
	BISListTable[50682].bis = {}
	table.insert(BISListTable[50682].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[50682].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[50682].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[50682].bis, {'WARRIOR','Protection'})
	BISListTable[50458] = {}
	BISListTable[50458].bis = {}
	table.insert(BISListTable[50458].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50458].bis, {'SHAMAN','Restoration'})
	table.insert(BISListTable[50458].bis, {'SHAMAN','Spellhance'})
	BISListTable[50724] = {}
	BISListTable[50724].bis = {}
	table.insert(BISListTable[50724].bis, {'DRUID','Balance'})
	table.insert(BISListTable[50724].bis, {'MAGE','Fire'})
	table.insert(BISListTable[50724].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50724].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[50724].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[50724].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50724].bis, {'SHAMAN','Restoration'})
	BISListTable[50639] = {}
	BISListTable[50639].pre = {}
	table.insert(BISListTable[50639].pre, {'DEATHKNIGHT','Blood'})
	table.insert(BISListTable[50639].pre, {'DEATHKNIGHT','Frost'})
	table.insert(BISListTable[50639].pre, {'DEATHKNIGHT','Unholy'})
	table.insert(BISListTable[50639].pre, {'PALADIN','Ret Strength'})
	table.insert(BISListTable[50639].pre, {'WARRIOR','Fury'})
	BISListTable[50687] = {}
	BISListTable[50687].pre = {}
	table.insert(BISListTable[50687].pre, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50687].pre, {'SHAMAN','Restoration'})
	BISListTable[50732] = {}
	BISListTable[50732].bis = {}
	table.insert(BISListTable[50732].bis, {'MAGE','Fire'})
	table.insert(BISListTable[50732].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50732].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[50732].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50732].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[50732].bis, {'WARLOCK','Destruction'})
	BISListTable[50672] = {}
	BISListTable[50672].bis = {}
	table.insert(BISListTable[50672].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[50672].bis, {'WARRIOR','Protection'})
	BISListTable[50672].pre = {}
	table.insert(BISListTable[50672].pre, {'DEATHKNIGHT','Frost'})
	BISListTable[50609] = {}
	BISListTable[50609].bis = {}
	table.insert(BISListTable[50609].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[50609].bis, {'PRIEST','Holy'})
	BISListTable[50665] = {}
	BISListTable[50665].bis = {}
	table.insert(BISListTable[50665].bis, {'DRUID','Restoration'})
	BISListTable[50630] = {}
	BISListTable[50630].pre = {}
	table.insert(BISListTable[50630].pre, {'DRUID','Restoration'})
	BISListTable[54582] = {}
	BISListTable[54582].bis = {}
	table.insert(BISListTable[54582].bis, {'DRUID','Balance'})
	table.insert(BISListTable[54582].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[54582].bis, {'MAGE','Fire'})
	table.insert(BISListTable[54582].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[54582].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[54582].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[54582].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[54582].bis, {'PRIEST','Holy'})
	table.insert(BISListTable[54582].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[54582].bis, {'SHAMAN','Restoration'})
	table.insert(BISListTable[54582].bis, {'SHAMAN','Spellhance'})
	table.insert(BISListTable[54582].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[54582].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[54582].bis, {'WARLOCK','Destruction'})
	BISListTable[50640] = {}
	BISListTable[50640].bis = {}
	table.insert(BISListTable[50640].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[50640].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[50640].bis, {'WARRIOR','Protection'})
	BISListTable[50616] = {}
	BISListTable[50616].bis = {}
	table.insert(BISListTable[50616].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[50616].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50616].bis, {'SHAMAN','Restoration'})
	BISListTable[54560] = {}
	BISListTable[54560].bis = {}
	table.insert(BISListTable[54560].bis, {'SHAMAN','Restoration'})
	BISListTable[54588] = {}
	BISListTable[54588].bis = {}
	table.insert(BISListTable[54588].bis, {'DRUID','Balance'})
	table.insert(BISListTable[54588].bis, {'MAGE','Fire'})
	table.insert(BISListTable[54588].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[54588].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[54588].bis, {'SHAMAN','Spellhance'})
	table.insert(BISListTable[54588].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[54588].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[54588].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[54588].bis, {'WARLOCK','Destruction'})
	BISListTable[54583] = {}
	BISListTable[54583].bis = {}
	table.insert(BISListTable[54583].bis, {'DRUID','Balance'})
	table.insert(BISListTable[54583].bis, {'MAGE','Fire'})
	table.insert(BISListTable[54583].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[54583].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[54583].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[54583].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[54583].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[54583].bis, {'SHAMAN','Restoration'})
	table.insert(BISListTable[54583].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[54583].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[54583].bis, {'WARLOCK','Destruction'})
	BISListTable[50620] = {}
	BISListTable[50620].bis = {}
	table.insert(BISListTable[50620].bis, {'DEATHKNIGHT','Blood'})
	table.insert(BISListTable[50620].bis, {'DEATHKNIGHT','Frost'})
	table.insert(BISListTable[50620].bis, {'DEATHKNIGHT','Unholy'})
	table.insert(BISListTable[50620].bis, {'PALADIN','Ret Strength'})
	table.insert(BISListTable[50620].bis, {'WARRIOR','Fury'})
	BISListTable[50684] = {}
	BISListTable[50684].bis = {}
	table.insert(BISListTable[50684].bis, {'MAGE','Fire'})
	table.insert(BISListTable[50684].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50684].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50684].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[50684].bis, {'PRIEST','Holy'})
	table.insert(BISListTable[50684].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50684].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[50684].bis, {'WARLOCK','Destruction'})
	BISListTable[50613] = {}
	BISListTable[50613].bis = {}
	table.insert(BISListTable[50613].bis, {'DRUID','Balance'})
	table.insert(BISListTable[50613].bis, {'MAGE','Fire'})
	table.insert(BISListTable[50613].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50613].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50613].bis, {'PRIEST','Holy'})
	table.insert(BISListTable[50613].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50613].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[50613].bis, {'WARLOCK','Destruction'})
	BISListTable[50613].pre = {}
	table.insert(BISListTable[50613].pre, {'PALADIN','Holy'})
	table.insert(BISListTable[50613].pre, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50613].pre, {'SHAMAN','Restoration'})
	BISListTable[50603] = {}
	BISListTable[50603].bis = {}
	table.insert(BISListTable[50603].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[50603].bis, {'DRUID','Feral Tank'})
	BISListTable[50686] = {}
	BISListTable[50686].pre = {}
	table.insert(BISListTable[50686].pre, {'MAGE','Fire'})
	table.insert(BISListTable[50686].pre, {'PRIEST','Discipline'})
	table.insert(BISListTable[50686].pre, {'PRIEST','Holy'})
	table.insert(BISListTable[50686].pre, {'WARLOCK','Demonology'})
	BISListTable[47464] = {}
	BISListTable[47464].bis = {}
	table.insert(BISListTable[47464].bis, {'PALADIN','Ret Strength'})
	BISListTable[47115] = {}
	BISListTable[47115].pre = {}
	table.insert(BISListTable[47115].pre, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[47115].pre, {'PALADIN','Retribution'})
	BISListTable[50363] = {}
	BISListTable[50363].bis = {}
	table.insert(BISListTable[50363].bis, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[50363].bis, {'DEATHKNIGHT','Frost DPS'})
	table.insert(BISListTable[50363].bis, {'DEATHKNIGHT','Unholy DPS'})
	table.insert(BISListTable[50363].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[50363].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[50363].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50363].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[50363].bis, {'WARRIOR','Fury'})
	BISListTable[50622] = {}
	BISListTable[50622].bis = {}
	table.insert(BISListTable[50622].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[50622].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[50622].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[50622].bis, {'WARRIOR','Protection'})
	BISListTable[50348] = {}
	BISListTable[50348].bis = {}
	table.insert(BISListTable[50348].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50348].bis, {'WARLOCK','Affliction'})
	BISListTable[51834] = {}
	BISListTable[51834].bis = {}
	table.insert(BISListTable[51834].bis, {'WARRIOR','Protection'})
	BISListTable[50461] = {}
	BISListTable[50461].bis = {}
	table.insert(BISListTable[50461].bis, {'PALADIN','Protection'})
	BISListTable[50733] = {}
	BISListTable[50733].bis = {}
	table.insert(BISListTable[50733].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[50733].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50733].bis, {'ROGUE','Assassination'})
	table.insert(BISListTable[50733].bis, {'WARRIOR','Fury'})
	BISListTable[50650] = {}
	BISListTable[50650].bis = {}
	table.insert(BISListTable[50650].bis, {'PALADIN','Holy'})
	BISListTable[50690] = {}
	BISListTable[50690].bis = {}
	table.insert(BISListTable[50690].bis, {'PALADIN','Ret Strength'})
	BISListTable[49895] = {}
	BISListTable[49895].bis = {}
	table.insert(BISListTable[49895].bis, {'DRUID','Feral Tank'})
	BISListTable[54586] = {}
	BISListTable[54586].bis = {}
	table.insert(BISListTable[54586].bis, {'PALADIN','Holy'})
	BISListTable[50628] = {}
	BISListTable[50628].pre = {}
	table.insert(BISListTable[50628].pre, {'DRUID','Balance'})
	table.insert(BISListTable[50628].pre, {'MAGE','Fire'})
	table.insert(BISListTable[50628].pre, {'MAGE','Arcane'})
	table.insert(BISListTable[50628].pre, {'PALADIN','Holy'})
	table.insert(BISListTable[50628].pre, {'PRIEST','Shadow'})
	table.insert(BISListTable[50628].pre, {'PRIEST','Discipline'})
	table.insert(BISListTable[50628].pre, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50628].pre, {'SHAMAN','Restoration'})
	table.insert(BISListTable[50628].pre, {'WARLOCK','Affliction'})
	table.insert(BISListTable[50628].pre, {'WARLOCK','Destruction'})
	BISListTable[50607] = {}
	BISListTable[50607].bis = {}
	table.insert(BISListTable[50607].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[50607].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[50607].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50607].bis, {'ROGUE','Assassination'})
	BISListTable[50618] = {}
	BISListTable[50618].bis = {}
	table.insert(BISListTable[50618].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[50618].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50618].bis, {'WARRIOR','Fury'})
	BISListTable[50697] = {}
	BISListTable[50697].bis = {}
	table.insert(BISListTable[50697].bis, {'ROGUE','Combat'})
	BISListTable[51901] = {}
	BISListTable[51901].bis = {}
	table.insert(BISListTable[51901].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[51901].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[51901].bis, {'WARRIOR','Protection'})
	BISListTable[47548] = {}
	BISListTable[47548].bis = {}
	table.insert(BISListTable[47548].bis, {'DEATHKNIGHT','Frost DPS'})
	BISListTable[50730] = {}
	BISListTable[50730].bis = {}
	table.insert(BISListTable[50730].bis, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[50730].bis, {'DEATHKNIGHT','Unholy DPS'})
	table.insert(BISListTable[50730].bis, {'PALADIN','Ret Strength'})
	table.insert(BISListTable[50730].bis, {'WARRIOR','Fury'})
	BISListTable[54589] = {}
	BISListTable[54589].bis = {}
	table.insert(BISListTable[54589].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[54589].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[54589].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[54589].bis, {'PRIEST','Holy'})
	table.insert(BISListTable[54589].bis, {'SHAMAN','Restoration'})
	BISListTable[50668] = {}
	BISListTable[50668].bis = {}
	table.insert(BISListTable[50668].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[50668].bis, {'PRIEST','Holy'})
	BISListTable[50668].pre = {}
	table.insert(BISListTable[50668].pre, {'WARLOCK','Demonology'})
	BISListTable[50625] = {}
	BISListTable[50625].bis = {}
	table.insert(BISListTable[50625].bis, {'PALADIN','Protection'})
	BISListTable[50625].pre = {}
	table.insert(BISListTable[50625].pre, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[50625].pre, {'PALADIN','Protection'})
	table.insert(BISListTable[50625].pre, {'WARRIOR','Protection'})
	BISListTable[50663] = {}
	BISListTable[50663].bis = {}
	table.insert(BISListTable[50663].bis, {'WARLOCK','Destruction'})
	BISListTable[50737] = {}
	BISListTable[50737].bis = {}
	table.insert(BISListTable[50737].bis, {'DEATHKNIGHT','Frost'})
	table.insert(BISListTable[50737].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50737].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[50737].bis, {'SHAMAN','Spellhance'})
	BISListTable[50736] = {}
	BISListTable[50736].bis = {}
	table.insert(BISListTable[50736].bis, {'ROGUE','Assassination'})
	BISListTable[50355] = {}
	BISListTable[50355].bis = {}
	table.insert(BISListTable[50355].bis, {'SHAMAN','Spellhance'})
	BISListTable[50729] = {}
	BISListTable[50729].bis = {}
	table.insert(BISListTable[50729].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[50729].bis, {'WARRIOR','Protection'})
	BISListTable[50454] = {}
	BISListTable[50454].bis = {}
	table.insert(BISListTable[50454].bis, {'DRUID','Restoration'})
	BISListTable[50456] = {}
	BISListTable[50456].bis = {}
	table.insert(BISListTable[50456].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[50456].bis, {'DRUID','Feral Tank'})
	BISListTable[50457] = {}
	BISListTable[50457].bis = {}
	table.insert(BISListTable[50457].bis, {'DRUID','Balance'})
	BISListTable[50656] = {}
	BISListTable[50656].bis = {}
	table.insert(BISListTable[50656].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[50656].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50656].bis, {'ROGUE','Assassination'})
	BISListTable[47451] = {}
	BISListTable[47451].bis = {}
	table.insert(BISListTable[47451].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[47451].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[47451].bis, {'PALADIN','Protection'})
	BISListTable[50728] = {}
	BISListTable[50728].pre = {}
	table.insert(BISListTable[50728].pre, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[50728].pre, {'DEATHKNIGHT','Frost DPS'})
	table.insert(BISListTable[50728].pre, {'WARRIOR','Fury'})
	BISListTable[50645] = {}
	BISListTable[50645].bis = {}
	table.insert(BISListTable[50645].bis, {'HUNTER','Marksmanship'})
	BISListTable[40705] = {}
	BISListTable[40705].bis = {}
	table.insert(BISListTable[40705].bis, {'PALADIN','Holy'})
	BISListTable[45145] = {}
	BISListTable[45145].bis = {}
	table.insert(BISListTable[45145].bis, {'PALADIN','Protection'})
	BISListTable[47661] = {}
	BISListTable[47661].bis = {}
	table.insert(BISListTable[47661].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[47661].bis, {'PALADIN','Protection'})
	BISListTable[50702] = {}
	BISListTable[50702].bis = {}
	table.insert(BISListTable[50702].bis, {'PRIEST','Discipline'})
	BISListTable[50621] = {}
	BISListTable[50621].bis = {}
	table.insert(BISListTable[50621].bis, {'ROGUE','Assassination'})
	BISListTable[50636] = {}
	BISListTable[50636].bis = {}
	table.insert(BISListTable[50636].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[50636].bis, {'PRIEST','Holy'})
	BISListTable[50693] = {}
	BISListTable[50693].bis = {}
	table.insert(BISListTable[50693].bis, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[50693].bis, {'DEATHKNIGHT','Frost DPS'})
	table.insert(BISListTable[50693].bis, {'DEATHKNIGHT','Unholy DPS'})
	BISListTable[50693].pre = {}
	table.insert(BISListTable[50693].pre, {'PALADIN','Ret Strength'})
	BISListTable[50738] = {}
	BISListTable[50738].bis = {}
	table.insert(BISListTable[50738].bis, {'WARRIOR','Protection'})
	BISListTable[50688] = {}
	BISListTable[50688].bis = {}
	table.insert(BISListTable[50688].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[50688].bis, {'SHAMAN','Enhancement'})
	BISListTable[50688].pre = {}
	table.insert(BISListTable[50688].pre, {'SHAMAN','Spellhance'})
	BISListTable[50735] = {}
	BISListTable[50735].bis = {}
	table.insert(BISListTable[50735].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[50735].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[50735].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[50735].bis, {'PALADIN','Retribution'})
	BISListTable[54581] = {}
	BISListTable[54581].bis = {}
	table.insert(BISListTable[54581].bis, {'DEATHKNIGHT','Blood'})
	table.insert(BISListTable[54581].bis, {'DEATHKNIGHT','Frost'})
	table.insert(BISListTable[54581].bis, {'DEATHKNIGHT','Unholy'})
	table.insert(BISListTable[54581].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[54581].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[54581].bis, {'WARRIOR','Fury'})
	BISListTable[54591] = {}
	BISListTable[54591].bis = {}
	table.insert(BISListTable[54591].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[54591].bis, {'WARRIOR','Protection'})
	BISListTable[54584] = {}
	BISListTable[54584].bis = {}
	table.insert(BISListTable[54584].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[54584].bis, {'SHAMAN','Restoration'})
	BISListTable[50365] = {}
	BISListTable[50365].bis = {}
	table.insert(BISListTable[50365].bis, {'DRUID','Balance'})
	table.insert(BISListTable[50365].bis, {'MAGE','Fire'})
	table.insert(BISListTable[50365].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50365].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50365].bis, {'SHAMAN','Spellhance'})
	table.insert(BISListTable[50365].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50365].bis, {'WARLOCK','Destruction'})
	BISListTable[50699] = {}
	BISListTable[50699].bis = {}
	table.insert(BISListTable[50699].bis, {'DRUID','Balance'})
	table.insert(BISListTable[50699].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[50699].bis, {'MAGE','Fire'})
	table.insert(BISListTable[50699].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50699].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50699].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[50699].bis, {'PRIEST','Holy'})
	table.insert(BISListTable[50699].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50699].bis, {'SHAMAN','Restoration'})
	table.insert(BISListTable[50699].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50699].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[50699].bis, {'WARLOCK','Destruction'})
	BISListTable[50699].pre = {}
	table.insert(BISListTable[50699].pre, {'PALADIN','Holy'})
	BISListTable[50694] = {}
	BISListTable[50694].bis = {}
	table.insert(BISListTable[50694].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50694].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[50694].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50694].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50694].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50694].bis, {'WARLOCK','Affliction'})
	BISListTable[50659] = {}
	BISListTable[50659].pre = {}
	table.insert(BISListTable[50659].pre, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[50659].pre, {'DEATHKNIGHT','Unholy DPS'})
	table.insert(BISListTable[50659].pre, {'PALADIN','Ret Strength'})
	BISListTable[50705] = {}
	BISListTable[50705].bis = {}
	table.insert(BISListTable[50705].bis, {'DRUID','Restoration'})
	BISListTable[54577] = {}
	BISListTable[54577].bis = {}
	table.insert(BISListTable[54577].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[54577].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[54577].bis, {'SHAMAN','Spellhance'})
	BISListTable[51822] = {}
	BISListTable[51822].bis = {}
	table.insert(BISListTable[51822].bis, {'HUNTER','Marksmanship'})
	BISListTable[54585] = {}
	BISListTable[54585].bis = {}
	table.insert(BISListTable[54585].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[54585].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[54585].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[54585].bis, {'PRIEST','Holy'})
	table.insert(BISListTable[54585].bis, {'SHAMAN','Restoration'})
	BISListTable[50664] = {}
	BISListTable[50664].bis = {}
	table.insert(BISListTable[50664].bis, {'DRUID','Balance'})
	table.insert(BISListTable[50664].bis, {'MAGE','Fire'})
	table.insert(BISListTable[50664].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50664].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[50664].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50664].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[50664].bis, {'SHAMAN','Restoration'})
	table.insert(BISListTable[50664].bis, {'WARLOCK','Affliction'})
	BISListTable[50629] = {}
	BISListTable[50629].bis = {}
	table.insert(BISListTable[50629].bis, {'MAGE','Fire'})
	BISListTable[50680] = {}
	BISListTable[50680].bis = {}
	table.insert(BISListTable[50680].bis, {'PALADIN','Holy'})
	BISListTable[9914] = {}
	BISListTable[9914].bis = {}
	table.insert(BISListTable[9914].bis, {'PRIEST','Holy'})
	BISListTable[50734] = {}
	BISListTable[50734].bis = {}
	table.insert(BISListTable[50734].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[50734].bis, {'DRUID','Balance'})
	table.insert(BISListTable[50734].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[50734].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50734].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[50734].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50734].bis, {'SHAMAN','Restoration'})
	table.insert(BISListTable[50734].bis, {'SHAMAN','Spellhance'})
	BISListTable[50717] = {}
	BISListTable[50717].bis = {}
	table.insert(BISListTable[50717].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[50717].bis, {'PRIEST','Holy'})
	BISListTable[50655] = {}
	BISListTable[50655].bis = {}
	table.insert(BISListTable[50655].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[50655].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[50655].bis, {'SHAMAN','Spellhance'})
	BISListTable[50624] = {}
	BISListTable[50624].bis = {}
	table.insert(BISListTable[50624].bis, {'DEATHKNIGHT','Unholy'})
	BISListTable[50654] = {}
	BISListTable[50654].bis = {}
	table.insert(BISListTable[50654].bis, {'ROGUE','Combat'})
	BISListTable[50466] = {}
	BISListTable[50466].bis = {}
	table.insert(BISListTable[50466].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[50466].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[50466].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[50466].bis, {'WARRIOR','Protection'})
	BISListTable[49623] = {}
	BISListTable[49623].bis = {}
	table.insert(BISListTable[49623].bis, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[49623].bis, {'DEATHKNIGHT','Unholy DPS'})
	table.insert(BISListTable[49623].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[49623].bis, {'WARRIOR','Fury'})
	BISListTable[50719] = {}
	BISListTable[50719].bis = {}
	table.insert(BISListTable[50719].bis, {'DRUID','Balance'})
	table.insert(BISListTable[50719].bis, {'MAGE','Fire'})
	table.insert(BISListTable[50719].bis, {'MAGE','Arcane'})
	table.insert(BISListTable[50719].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[50719].bis, {'PRIEST','Shadow'})
	table.insert(BISListTable[50719].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50719].bis, {'WARLOCK','Affliction'})
	table.insert(BISListTable[50719].bis, {'WARLOCK','Destruction'})
	BISListTable[50653] = {}
	BISListTable[50653].bis = {}
	table.insert(BISListTable[50653].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[50653].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[50653].bis, {'ROGUE','Assassination'})
	table.insert(BISListTable[50653].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[50653].bis, {'SHAMAN','Spellhance'})
	BISListTable[54590] = {}
	BISListTable[54590].bis = {}
	table.insert(BISListTable[54590].bis, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[54590].bis, {'DEATHKNIGHT','Frost DPS'})
	table.insert(BISListTable[54590].bis, {'DEATHKNIGHT','Unholy DPS'})
	table.insert(BISListTable[54590].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[54590].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[54590].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[54590].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[54590].bis, {'ROGUE','Assassination'})
	table.insert(BISListTable[54590].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[54590].bis, {'WARRIOR','Fury'})
	BISListTable[40207] = {}
	BISListTable[40207].bis = {}
	table.insert(BISListTable[40207].bis, {'DEATHKNIGHT','Frost DPS'})
	BISListTable[47672] = {}
	BISListTable[47672].bis = {}
	table.insert(BISListTable[47672].bis, {'DEATHKNIGHT','Blood Tank'})
	BISListTable[50459] = {}
	BISListTable[50459].bis = {}
	table.insert(BISListTable[50459].bis, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[50459].bis, {'DEATHKNIGHT','Unholy DPS'})
	BISListTable[54576] = {}
	BISListTable[54576].bis = {}
	table.insert(BISListTable[54576].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[54576].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[54576].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[54576].bis, {'ROGUE','Combat 4p'})
	table.insert(BISListTable[54576].bis, {'ROGUE','Assassination'})
	table.insert(BISListTable[54576].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[54576].bis, {'SHAMAN','Spellhance'})
	BISListTable[49489] = {}
	BISListTable[49489].bis = {}
	table.insert(BISListTable[49489].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[49489].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[49489].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[49489].bis, {'WARRIOR','Protection'})
	BISListTable[50633] = {}
	BISListTable[50633].bis = {}
	table.insert(BISListTable[50633].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[50633].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50633].bis, {'ROGUE','Assassination'})
	table.insert(BISListTable[50633].bis, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[50633].bis, {'SHAMAN','Spellhance'})
	BISListTable[50364] = {}
	BISListTable[50364].bis = {}
	table.insert(BISListTable[50364].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[50364].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[50364].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[50364].bis, {'WARRIOR','Protection'})
	BISListTable[47432] = {}
	BISListTable[47432].bis = {}
	table.insert(BISListTable[47432].bis, {'PRIEST','Discipline'})
	table.insert(BISListTable[47432].bis, {'SHAMAN','Restoration'})
	BISListTable[54587] = {}
	BISListTable[54587].bis = {}
	table.insert(BISListTable[54587].bis, {'PALADIN','Holy'})
	table.insert(BISListTable[54587].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[54587].bis, {'SHAMAN','Restoration'})
	table.insert(BISListTable[54587].bis, {'SHAMAN','Spellhance'})
	BISListTable[50635] = {}
	BISListTable[50635].bis = {}
	table.insert(BISListTable[50635].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[50635].bis, {'PRIEST','Holy'})
	BISListTable[47545] = {}
	BISListTable[47545].bis = {}
	table.insert(BISListTable[47545].bis, {'WARRIOR','Fury'})
	table.insert(BISListTable[47545].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[47545].bis, {'ROGUE','Combat'})
	BISListTable[47546] = {}
	BISListTable[47546].bis = {}
	table.insert(BISListTable[47546].bis, {'WARRIOR','Fury'})
	table.insert(BISListTable[47546].bis, {'HUNTER','Marksmanship'})
	table.insert(BISListTable[47546].bis, {'ROGUE','Combat'})
	BISListTable[50651] = {}
	BISListTable[50651].pre = {}
	table.insert(BISListTable[50651].pre, {'DRUID','Balance'})
	table.insert(BISListTable[50651].pre, {'MAGE','Arcane'})
	table.insert(BISListTable[50651].pre, {'PRIEST','Shadow'})
	table.insert(BISListTable[50651].pre, {'WARLOCK','Affliction'})
	table.insert(BISListTable[50651].pre, {'WARLOCK','Destruction'})
	BISListTable[50455] = {}
	BISListTable[50455].bis = {}
	table.insert(BISListTable[50455].bis, {'PALADIN','Retribution'})
	BISListTable[50706] = {}
	BISListTable[50706].bis = {}
	table.insert(BISListTable[50706].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[50706].bis, {'ROGUE','Assassination'})
	BISListTable[50670] = {}
	BISListTable[50670].bis = {}
	table.insert(BISListTable[50670].bis, {'DEATHKNIGHT','Frost DPS'})
	table.insert(BISListTable[50670].bis, {'ROGUE','Combat'})
	table.insert(BISListTable[50670].bis, {'WARRIOR','Fury'})
	BISListTable[50670].pre = {}
	table.insert(BISListTable[50670].pre, {'ROGUE','Combat 4p'})
	BISListTable[47665] = {}
	BISListTable[47665].bis = {}
	table.insert(BISListTable[47665].bis, {'SHAMAN','Restoration'})
	BISListTable[50463] = {}
	BISListTable[50463].bis = {}
	table.insert(BISListTable[50463].bis, {'SHAMAN','Enhancement'})
	BISListTable[54579] = {}
	BISListTable[54579].bis = {}
	table.insert(BISListTable[54579].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[54579].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[54579].bis, {'WARRIOR','Protection'})
	BISListTable[50711] = {}
	BISListTable[50711].pre = {}
	table.insert(BISListTable[50711].pre, {'SHAMAN','Enhancement'})
	table.insert(BISListTable[50711].pre, {'SHAMAN','Spellhance'})
	BISListTable[54580] = {}
	BISListTable[54580].bis = {}
	table.insert(BISListTable[54580].bis, {'DEATHKNIGHT','Blood DPS'})
	table.insert(BISListTable[54580].bis, {'DEATHKNIGHT','Unholy DPS'})
	table.insert(BISListTable[54580].bis, {'DRUID','Feral DPS'})
	table.insert(BISListTable[54580].bis, {'DRUID','Feral Tank'})
	table.insert(BISListTable[54580].bis, {'PALADIN','Retribution'})
	table.insert(BISListTable[54580].bis, {'ROGUE','Combat 4p'})
	table.insert(BISListTable[54580].bis, {'ROGUE','Assassination'})
	table.insert(BISListTable[54580].bis, {'WARRIOR','Fury'})
	BISListTable[50064] = {}
	BISListTable[50064].bis = {}
	table.insert(BISListTable[50064].bis, {'SHAMAN','Restoration'})
	BISListTable[46017] = {}
	BISListTable[46017].bis = {}
	table.insert(BISListTable[46017].bis, {'DRUID','Restoration'})
	table.insert(BISListTable[46017].bis, {'PRIEST','Holy'})
	BISListTable[50714] = {}
	BISListTable[50714].bis = {}
	table.insert(BISListTable[50714].bis, {'DRUID','Balance'})
	table.insert(BISListTable[50714].bis, {'SHAMAN','Elemental'})
	table.insert(BISListTable[50714].bis, {'WARLOCK','Demonology'})
	table.insert(BISListTable[50714].bis, {'WARLOCK','Destruction'})
	BISListTable[50991] = {}
	BISListTable[50991].bis = {}
	table.insert(BISListTable[50991].bis, {'DEATHKNIGHT','Blood Tank'})
	table.insert(BISListTable[50991].bis, {'PALADIN','Protection'})
	table.insert(BISListTable[50991].bis, {'WARRIOR','Protection'})
	BISListTable[50343] = {}
	BISListTable[50343].pre = {}
	table.insert(BISListTable[50343].pre, {'DEATHKNIGHT','Blood'})
	table.insert(BISListTable[50343].pre, {'PALADIN','Retribution'})
	table.insert(BISListTable[50343].pre, {'SHAMAN','Enhancement'})
	BISListTable[50677] = {}
	BISListTable[50677].bis = {}
	table.insert(BISListTable[50677].bis, {'DEATHKNIGHT','Blood'})
	table.insert(BISListTable[50677].bis, {'DEATHKNIGHT','Unholy'})
	table.insert(BISListTable[50677].bis, {'PALADIN','Ret Strength'})
	return BISListTable
end

