NerienOvaleScripts.script["SHAMAN"] =
[[
# Nerien's Shaman Ovale script based on SimulationCraft.
#
# Elemental:
#	talents=http://www.wowhead.com/talent#shaman-3232023212231101321203000200000000000000000000000000000000
#	glyphs=fire_nova/thunder/lightning_shield/astral_recall/renewed_life/thunderstorm/lightning_bolt/lava_burst/flame_shock
#
# Enhancement:
#	talents=http://www.wowhead.com/talent#shaman-3022021000000000000232332001300301232100000000000000000000
#	glyphs=ghost_wolf/lightning_shield/chain_lightning/astral_recall/renewed_life/water_walking/windfury_weapon/lava_lash/stormstrike

## defines ##

# Buffs
SpellList(ARMORBUFF 465 8072) # Devotion Aura, Stoneskin Totem
Define(MAELSTROMWEAPON 53817)
SpellList(MANAREGENBUFF 5677 54424 79102) # Mana Spring Totem, Fel Intelligence, Blessing of Might
Define(RIPTIDEHOT 61295)
SpellList(SPELLPOWERBUFF 52109 53646 77747 79038 79058) # Flametongue Totem, Demonic Pact, Totemic Wrath, Arcane Brilliance, Dalaran Brilliance
Define(UNLEASHWIND 73681)

# Buff Procs
SpellList(COMBATMIND 107970 109793 109795) # Will of Unbinding stacking int buff
Define(LIGHTWEAVE 75170) # +580 int tailoring proc
Define(POWERTORRENT 74241) # +500 int weapon enchant proc
Define(VOLCANICDESTRUCTION 89091) # DMC: Volcano +1600 int proc

# On-use trinket buffs for some commonly available 300+ trinkets.
SpellList(SPELLPOWERTRINKETBUFF 73551 84968 90889 91019 91135 91136 92225 95875 97007 97008 99712 99741 102437 105134 107948)
SpellList(HASTETRINKETBUFF 91041 92328)

# Glyphs
Define(GLYPHOFFLAMESHOCK 57239)
Define(GLYPHOFGROUNDINGTOTEM 55441)
Define(GLYPHOFSTONECLAWTOTEM 63298)
Define(GLYPHOFUNLEASHEDLIGHTNING 101052)

# Talents
Define(FOCUSEDINSIGHTTALENT 5567)
Define(FULMINATIONTALENT 11769)
Define(REVERBERATIONTALENT 575)

# Spells
Define(BLOODLUST 2825)
	SpellInfo(BLOODLUST cd=300)
	SpellAddBuff(BLOODLUST BLOODLUST=40)
Define(CHAINHEAL 1064)
Define(CHAINLIGHTNING 421)
	SpellAddBuff(CHAINLIGHTNING MAELSTROMWEAPON=0)
Define(EARTHLIVINGWEAPON 51730)
Define(EARTHQUAKE 61882)
Define(EARTHSHOCK 8042)
	SpellInfo(EARTHSHOCK cd=6 sharedcd=shock)
	SpellInfo(EARTHSHOCK addcd=-1 talent=REVERBERATIONTALENT)
	SpellAddTargetDebuff(EARTHSHOCK EARTHSHOCK=8)
Define(ELEMENTALMASTERY 16166)
	SpellInfo(ELEMENTALMASTERY cd=180)
	SpellAddBuff(ELEMENTALMASTERY ELEMENTALMASTERY=30)
Define(FERALSPIRIT 51533)
	SpellInfo(FERALSPIRIT cd=120)
Define(FIRENOVA 1535)
	SpellInfo(FIRENOVA cd=10)
Define(FLAMESHOCK 8050)
	SpellInfo(FLAMESHOCK cd=6 sharedcd=shock duration=18 tick=3)
	SpellInfo(FLAMESHOCK addcd=-1 talent=REVERBERATIONTALENT)
	SpellInfo(FLAMESHOCK addduration=9 glyph=GLYPHOFFLAMESHOCK)
	SpellAddTargetDebuff(FLAMESHOCK FLAMESHOCK=18)
Define(FLAMETONGUEWEAPON 8024)
Define(FROSTSHOCK 8056)
	SpellInfo(FROSTSHOCK cd=6 sharedcd=shock)
	SpellInfo(FROSTSHOCK addcd=-1 talent=REVERBERATIONTALENT)
	SpellAddTargetDebuff(FROSTSHOCK FROSTSHOCK=8)
Define(FROSTBRANDWEAPON 8033)
Define(HEALINGRAIN 73920)
Define(HEROISM 32182)
	SpellInfo(HEROISM cd=300)
	SpellAddBuff(HEROISM HEROISM=40)
Define(LAVABURST 51505)
	SpellInfo(LAVABURST cd=8)
Define(LAVALASH 60103)
	SpellInfo(LAVALASH cd=10)
Define(LIGHTNINGBOLT 403)
	SpellAddBuff(LIGHTNINGBOLT MAELSTROMWEAPON=0)
Define(LIGHTNINGSHIELD 324)
	SpellAddBuff(LIGHTNINGSHIELD LIGHTNINGSHIELD=600)
Define(PRIMALSTRIKE 73899)
	SpellInfo(PRIMALSTRIKE cd=8)
Define(RIPTIDE 61295)
Define(ROCKBITERWEAPON 8017)
Define(SHAMANISTICRAGE 30823)
	SpellInfo(SHAMANISTICRAGE cd=60)
	SpellAddBuff(SHAMANISTICRAGE SHAMANISTICRAGE=15)
Define(SPIRITWALKERSGRACE 79206)
	SpellInfo(SPIRITWALKERSGRACE cd=120)
	SpellAddBuff(SPIRITWALKERSGRACE SPIRITWALKERSGRACE=15)
Define(STORMSTRIKE 17364)
	SpellInfo(STORMSTRIKE cd=8)
	SpellAddTargetDebuff(STORMSTRIKE STORMSTRIKE=15)
Define(THUNDERSTORM 51490)
	SpellInfo(THUNDERSTORM cd=45)
Define(UNLEASHELEMENTS 73680)
	SpellInfo(UNLEASHELEMENTS cd=15)
Define(UNLEASHFLAME 73683)
	SpellInfo(UNLEASHFLAME cd=15)
	SpellAddBuff(UNLEASHFLAME UNLEASHFLAME=8)
Define(WATERSHIELD 52127)
	SpellAddBuff(WATERSHIELD WATERSHIELD=600)
Define(WINDFURYWEAPON 8232)
Define(WINDSHEAR 57994)
	SpellInfo(WINDSHEAR cd=15)
	SpellInfo(WINDSHEAR addcd=-10 talent=REVERBERATIONTALENT)

# Fire totems
Define(FIREELEMENTALTOTEM 2894)
Define(FLAMETONGUETOTEM 8227)
Define(MAGMATOTEM 8190)
	SpellInfo(MAGMATOTEM cd=20)
Define(SEARINGTOTEM 3599)
	SpellInfo(SEARINGTOTEM cd=10) # fake CD so it won't be displayed twice
# Water totems
Define(HEALINGSTREAMTOTEM 5394)
Define(MANASPRINGTOTEM 5675)
Define(MANATIDETOTEM 16190)
Define(TOTEMOFTRANQUILMIND 87718)
# Air totems
Define(GROUNDINGTOTEM 8177)
	SpellInfo(GROUNDINGTOTEM cd=25)
	SpellInfo(GROUNDINGTOTEM addcd=35 glyph=GLYPHOFGROUNDINGTOTEM)
Define(SPIRITLINKTOTEM 98008)
Define(WINDFURYTOTEM 8512)
Define(WRATHOFAIRTOTEM 3738)
# Earth totems
Define(EARTHELEMENTALTOTEM 2062)
Define(STONECLAWTOTEM 5730)
	SpellInfo(STONECLAWTOTEM cd=20)
Define(STONESKINTOTEM 8071)
Define(STRENGTHOFEARTHTOTEM 8075)
Define(TREMORTOTEM 8143)
	SpellInfo(TREMORTOTEM cd=60)

# Racials & Professions
Define(BERSERKING 26297) # troll
	SpellInfo(BERSERKING duration=10 cd=180)
	SpellAddBuff(BERSERKING BERSERKING=10)
Define(BLOODFURY 33697) # orc
	SpellInfo(BLOODFURY duration=15 cd=120)
	SpellAddBuff(BLOODFURY BLOODFURY=15)
Define(LIFEBLOOD 55503) # herbalism
	SpellInfo(LIFEBLOOD duration=20 cd=120)
Define(STONEFORM 20594) # dwarf
	SpellInfo(STONEFORM duration=8 cd=120)
	SpellAddBuff(STONEFORM STONEFORM=8)

# Items
Define(POTIONOFTHETOLVIR 58145)
	Define(POTIONOFTHETOLVIRSPELL 80495)
Define(VOLCANICPOTION 58091)
	Define(VOLCANICPOTIONSPELL 80481)
	Define(VOLCANICPOWER 79476) # +1200 int

## end defines ##

ScoreSpells(LIGHTNINGSHIELD CHAINLIGHTNING FLAMESHOCK LAVABURST EARTHSHOCK LIGHTNINGBOLT
			STORMSTRIKE LAVALASH UNLEASHELEMENTS)

AddCheckBox(potions SpellName(VOLCANICPOTIONSPELL) mastery=1 default)
AddCheckBox(potions SpellName(POTIONOFTHETOLVIRSPELL) mastery=2 default)
AddCheckBox(potions SpellName(VOLCANICPOTIONSPELL) mastery=3)
AddCheckBox(aoe L(AOE))
AddListItem(shock none L(None) default talent=FOCUSEDINSIGHTTALENT)
AddListItem(shock earth SpellName(EARTHSHOCK) talent=FOCUSEDINSIGHTTALENT)
AddListItem(shock flame SpellName(FLAMESHOCK) talent=FOCUSEDINSIGHTTALENT)
AddListItem(shock frost SpellName(FROSTSHOCK) talent=FOCUSEDINSIGHTTALENT)
AddCheckBox(mw2lb SpellName(LIGHTNINGBOLT) mastery=2)

AddCheckBox(lightweave SpellName(LIGHTWEAVE) mastery=1)
AddCheckBox(powertorrent SpellName(POWERTORRENT) mastery=1)

# Commonly available trinkets with proc effects for Elemental shamans.
AddCheckBox(trinketdmcv "DMC: Volcano" mastery=1)
AddCheckBox(trinketwou "Will of Unbinding" mastery=1)

# Trinket CDs
AddListItem(trinketcd0 000s "Trinket 0 CD - none" default)
AddListItem(trinketcd0 060s "Trinket 0 CD - 1 min")
AddListItem(trinketcd0 090s "Trinket 0 CD - 1 min 30s")
AddListItem(trinketcd0 120s "Trinket 0 CD - 2 min")
AddListItem(trinketcd1 000s "Trinket 1 CD - none" default)
AddListItem(trinketcd1 060s "Trinket 1 CD - 1 min")
AddListItem(trinketcd1 090s "Trinket 1 CD - 1 min 30s")
AddListItem(trinketcd1 120s "Trinket 1 CD - 2 min")

AddFunction UseItemActions
{
	Item(HandsSlot usable=1)
	unless List(trinketcd0 000s) Item(Trinket0Slot usable=1)
	unless List(trinketcd1 000s) Item(Trinket1Slot usable=1)
}

AddFunction UseProfessionActions
{
	Spell(LIFEBLOOD)
}

AddFunction UseRacialActions
{
	Spell(BERSERKING)
	Spell(BLOODFURY)
}

###
### Elemental
###

AddFunction EnoughSpellpower
{
	# "enough buffs" means:
	#	- at least 2 stacks from Will of Unbinding at the start of the fight, or 8 stacks later.
	#	- at least two proc effects
	#	- potion
	#	- at least one on-use trinket effect (either ready to use, or buff already present)
	#
	{CheckBoxOff(trinketwou) or {TimeInCombat(less 10) and BuffPresent(COMBATMIND stacks=2)} or BuffPresent(COMBATMIND stacks=8)}
	and {{{CheckBoxOn(lightweave) and BuffPresent(LIGHTWEAVE)} and {CheckBoxOn(powertorrent) and BuffPresent(POWERTORRENT)}}
		or {{CheckBoxOn(lightweave) and BuffPresent(LIGHTWEAVE)} and {CheckBoxOn(trinketdmcv) and BuffPresent(VOLCANICDESTRUCTION)}}
		or {{CheckBoxOn(powertorrent) and BuffPresent(POWERTORRENT)} and {CheckBoxOn(trinketdmcv) and BuffPresent(VOLCANICDESTRUCTION)}}
		or {{CheckBoxOn(lightweave) and BuffPresent(LIGHTWEAVE)} and CheckBoxOff(powertorrent) and CheckBoxOff(trinketdmcv)}
		or {{CheckBoxOn(powertorrent) and BuffPresent(POWERTORRENT)} and CheckBoxOff(lightweave) and CheckBoxOff(trinketdmcv)}
		or {{CheckBoxOn(trinketdmcv) and BuffPresent(VOLCANICDESTRUCTION)} and CheckBoxOff(lightweave) and CheckBoxOff(powertorrent)}
		or {CheckBoxOff(lightweave) and CheckBoxOff(powertorrent) and CheckBoxOff(trinketdmcv)}}
	and {CheckBoxOff(potions) or {ItemCount(VOLCANICPOTION more 0) and Item(VOLCANICPOTION)} or BuffPresent(VOLCANICPOWER)}
	and {{List(trinketcd0 000s) and List(trinketcd1 000s)}
		or {{List(trinketcd0 060s) or List(trinketcd0 090s) or List(trinketcd0 120s)}
			and {Item(Trinket0Slot)	or {BuffPresent(SPELLPOWERTRINKETBUFF) or BuffPresent(HASTETRINKETBUFF)}}}
		or {{List(trinketcd1 060s) or List(trinketcd1 090s) or List(trinketcd1 120s)}
			and {Item(Trinket1Slot)	or {BuffPresent(SPELLPOWERTRINKETBUFF) or BuffPresent(HASTETRINKETBUFF)}}}}
}

AddFunction UseItemActionsElemental
{
	# If FE is ready and there is enough spellpower, then pop trinkets.
	# Otherwise, if the trinket will be ready again before FE comes off CD, then use it.
	#
	if 0s before Spell(FIREELEMENTALTOTEM) and EnoughSpellpower()
	{
		Item(HandsSlot usable=1)
		unless List(trinketcd0 000s) Item(Trinket0Slot usable=1)
		unless List(trinketcd1 000s) Item(Trinket1Slot usable=1)
	}
	unless 60s before Spell(FIREELEMENTALTOTEM)
	{
		Item(HandsSlot usable=1)
		if List(trinketcd0 060s) Item(Trinket0Slot usable=1)
		if List(trinketcd1 060s) Item(Trinket1Slot usable=1)
	}
	unless 90s before Spell(FIREELEMENTALTOTEM)
	{
		if List(trinketcd0 090s) Item(Trinket0Slot usable=1)
		if List(trinketcd1 090s) Item(Trinket1Slot usable=1)
	}
	unless 120s before Spell(FIREELEMENTALTOTEM)
	{
		if List(trinketcd0 120s) Item(Trinket0Slot usable=1)
		if List(trinketcd1 120s) Item(Trinket1Slot usable=1)
	}
}

AddIcon help=buff size=small mastery=1
{
	if TotemExpires(earth)
	{
		unless BuffPresent(strengthagility) Spell(STRENGTHOFEARTHTOTEM)
		unless BuffPresent(ARMORBUFF) Spell(STONESKINTOTEM)
	}
	if TotemExpires(air)
	{
		#/wrath_of_air_totem
		unless BuffPresent(spellhaste) Spell(WRATHOFAIRTOTEM)
		unless BuffPresent(meleehaste) Spell(WINDFURYTOTEM)
	}
	if TotemExpires(water)
	{
		#/mana_spring_totem
		unless BuffPresent(MANAREGENBUFF) Spell(MANASPRINGTOTEM)
		Spell(HEALINGSTREAMTOTEM)
	}
}

AddIcon help=main mastery=1
{
	unless InCombat()
	{
		if WeaponEnchantExpires(mainhand 400) Spell(FLAMETONGUEWEAPON)
		if BuffExpires(LIGHTNINGSHIELD 400) Spell(LIGHTNINGSHIELD)
	}

	#/flametongue_weapon,weapon=main
	if WeaponEnchantExpires(mainhand 2) Spell(FLAMETONGUEWEAPON)
	#/lightning_shield
	if BuffExpires(LIGHTNINGSHIELD 2) Spell(LIGHTNINGSHIELD)
	unless Glyph(GLYPHOFUNLEASHEDLIGHTNING)
	{
		#/unleash_elements,moving=1
		if Speed(more 0) Spell(UNLEASHELEMENTS)
	}
	#/flame_shock,if=!ticking|ticks_remain<2|((buff.bloodlust.react|buff.elemental_mastery.up)&ticks_remain<3)
	if TargetDebuffExpires(FLAMESHOCK 3 haste=spell mine=1) Spell(FLAMESHOCK)
	if BuffPresent(heroism) or BuffPresent(ELEMENTALMASTERY)
		if TargetDebuffExpires(FLAMESHOCK 6 haste=spell mine=1) Spell(FLAMESHOCK)
	#/lava_burst,if=dot.flame_shock.remains>cast_time
	if target.debuffExpires(FLAMESHOCK mine=1) > castTime(LAVABURST) Spell(LAVABURST)
	if TalentPoints(FULMINATIONTALENT more 0)
	{
		#/earth_shock,if=buff.lightning_shield.stack=9
		if BuffPresent(LIGHTNINGSHIELD stacks=9) Spell(EARTHSHOCK)
		#/earth_shock,if=buff.lightning_shield.stack>6&\
		#    dot.flame_shock.remains>cooldown&\
		#    dot.flame_shock.remains<cooldown+action.flame_shock.tick_time
		if BuffPresent(LIGHTNINGSHIELD stacks=7)
		{
			# Cast Earth Shock at 7+ stacks if the Flame Shock DoT will be on its last tick when Flame Shock is ready.
			if {TalentPoints(REVERBERATIONTALENT equal 0)
					and {target.debuffExpires(FLAMESHOCK mine=1) > 6}
					and {target.debuffExpires(FLAMESHOCK mine=1) < 6 + timeWithHaste(3)}}
				or {TalentPoints(REVERBERATIONTALENT equal 1)
					and {target.debuffExpires(FLAMESHOCK mine=1) > 5.5}
					and {target.debuffExpires(FLAMESHOCK mine=1) < 5.5 + timeWithHaste(3)}}
				or {TalentPoints(REVERBERATIONTALENT equal 2)
					and {target.debuffExpires(FLAMESHOCK mine=1) > 5}
					and {target.debuffExpires(FLAMESHOCK mine=1) < 5 + timeWithHaste(3)}}
			{
				Spell(EARTHSHOCK)
			}
		}
	}
	#/searing_totem
	if TotemExpires(fire) Spell(SEARINGTOTEM)
	#/lightning_bolt
	Spell(LIGHTNINGBOLT)
}

AddIcon help=aoe mastery=1 checkboxon=aoe
{
	unless InCombat()
	{
		if WeaponEnchantExpires(mainhand 400) Spell(FLAMETONGUEWEAPON)
		if BuffExpires(LIGHTNINGSHIELD 400) Spell(LIGHTNINGSHIELD)
	}

	#/flametongue_weapon,weapon=main
	if WeaponEnchantExpires(mainhand 2) Spell(FLAMETONGUEWEAPON)
	#/lightning_shield
	if BuffExpires(LIGHTNINGSHIELD 2) Spell(LIGHTNINGSHIELD)
	if TotemExpires(fire) Spell(MAGMATOTEM)
	if TalentPoints(FULMINATIONTALENT more 0)
	{
		#/earth_shock,if=buff.lightning_shield.stack=9
		if BuffPresent(LIGHTNINGSHIELD stacks=9) Spell(EARTHSHOCK)
	}
	#/chain_lightning,if=target.adds>2
	Spell(CHAINLIGHTNING)
}

AddIcon help=cd mastery=1
{
	#/volcanic_potion,if=!in_combat
	if InCombat(no) and CheckBoxOn(potions) and TargetClassification(worldboss) Item(VOLCANICPOTION)
	if IsFeared() Spell(TREMORTOTEM)
	#/wind_shear
	if TargetIsInterruptible(yes) Spell(WINDSHEAR)
	#/volcanic_potion,if=buff.bloodlust.react|target.time_to_die<=40
	if CheckBoxOn(potions) and TargetClassification(worldboss) and {BuffPresent(heroism) or TargetDeadIn(less 40)} Item(VOLCANICPOTION)
	#/use_item
	UseItemActionsElemental()
	#init_use_profession_actions()
	UseProfessionActions()
	#init_use_racial_actions()
	UseRacialActions()
	#/elemental_mastery
	Spell(ELEMENTALMASTERY)
	#/spiritwalkers_grace,moving=1,if=cooldown.lava_burst.remains=0&set_bonus.tier12_4pc_caster=0
	if Speed(more 0) and Spell(LAVABURST) and ArmorSetParts(T12 less 4) Spell(SPIRITWALKERSGRACE)
}

AddIcon help=cd mastery=1
{
	if EnoughSpellpower()
	{
		#/fire_elemental_totem,if=!ticking
		Spell(FIREELEMENTALTOTEM)
		#/earth_elemental_totem,if=!ticking
		Spell(EARTHELEMENTALTOTEM)
	}
}

###
### Enhancement
###

AddIcon help=buff size=small mastery=2
{
	if TotemExpires(earth)
	{
		#/strength_of_earth_totem
		unless BuffPresent(strengthagility) Spell(STRENGTHOFEARTHTOTEM)
		unless BuffPresent(ARMORBUFF) Spell(STONESKINTOTEM)
	}
	if TotemExpires(air)
	{
		#/windfury_totem
		unless BuffPresent(meleehaste) Spell(WINDFURYTOTEM)
		unless BuffPresent(spellhaste) Spell(WRATHOFAIRTOTEM)
	}
	if TotemExpires(water)
	{
		#/mana_spring_totem
		unless BuffPresent(MANAREGENBUFF) Spell(MANASPRINGTOTEM)
		Spell(HEALINGSTREAMTOTEM)
	}
}

AddIcon help=main mastery=2
{
	unless InCombat()
	{
		if WeaponEnchantExpires(mainhand 400) Spell(WINDFURYWEAPON)
		if WeaponEnchantExpires(offhand 400) Spell(FLAMETONGUEWEAPON)
		if BuffExpires(LIGHTNINGSHIELD 400) Spell(LIGHTNINGSHIELD)
	}

	#/windfury_weapon,weapon=main
	if WeaponEnchantExpires(mainhand 2) Spell(WINDFURYWEAPON)
	#/flametongue_weapon,weapon=off
	if WeaponEnchantExpires(offhand 2) Spell(FLAMETONGUEWEAPON)
	#/lightning_shield
	if BuffExpires(LIGHTNINGSHIELD 2) Spell(LIGHTNINGSHIELD)
	#/searing_totem
	if TotemExpires(fire) Spell(SEARINGTOTEM)
	#/stormstrike
	Spell(STORMSTRIKE)
	#/lava_lash
	Spell(LAVALASH)
	#/lightning_bolt,if=buff.maelstrom_weapon.react=5|(set_bonus.tier13_4pc_melee=1&buff.maelstrom_weapon.react>=4&pet.spirit_wolf.active)
	if BuffPresent(MAELSTROMWEAPON stacks=5) Spell(LIGHTNINGBOLT)
	if ArmorSetParts(T13 more 3) and BuffPresent(MAELSTROMWEAPON stacks=4) and PetPresent(yes) Spell(LIGHTNINGBOLT)
	#/unleash_elements
	Spell(UNLEASHELEMENTS)
	#/flame_shock,if=!ticking|buff.unleash_flame.up
	if TargetDebuffExpires(FLAMESHOCK 0 mine=1) or BuffPresent(UNLEASHFLAME) Spell(FLAMESHOCK)
	#/earth_shock
	Spell(EARTHSHOCK)
	#/lightning_bolt,if=buff.maelstrom_weapon.react>1
	if CheckBoxOn(mw2lb) and BuffPresent(MAELSTROMWEAPON stacks=2) and Speed(equal 0) Spell(LIGHTNINGBOLT)
}

AddIcon help=aoe mastery=2 checkboxon=aoe
{
	unless InCombat()
	{
		if WeaponEnchantExpires(mainhand 400) Spell(WINDFURYWEAPON)
		if WeaponEnchantExpires(offhand 400) Spell(FLAMETONGUEWEAPON)
		if BuffExpires(LIGHTNINGSHIELD 400) Spell(LIGHTNINGSHIELD)
	}

	if WeaponEnchantExpires(mainhand 2) Spell(WINDFURYWEAPON)
	if WeaponEnchantExpires(offhand 2) Spell(FLAMETONGUEWEAPON)
	if BuffExpires(LIGHTNINGSHIELD 2) Spell(LIGHTNINGSHIELD)

	# Enhancement 4.3 AoE rotation from ElitistJerks:
	#    http://elitistjerks.com/f79/t127416-enhancement_4_3_least_your_old_axe_good_transmog/#post2051733
	if BuffPresent(MAELSTROMWEAPON stacks=5) Spell(CHAINLIGHTNING)
	if TotemExpires(fire) Spell(MAGMATOTEM)
	Spell(UNLEASHELEMENTS)
	if TargetDebuffExpires(FLAMESHOCK 0 mine=1) or BuffPresent(UNLEASHFLAME) Spell(FLAMESHOCK)
	Spell(LAVALASH)
	if TargetDebuffPresent(FLAMESHOCK mine=1) or OtherDebuffPresent(FLAMESHOCK mine=1) Spell(FIRENOVA)
}

AddIcon help=cd mastery=2
{
	#/tolvir_potion,if=!in_combat
	if InCombat(no) and CheckBoxOn(potions) and TargetClassification(worldboss) Item(POTIONOFTHETOLVIR)
	if IsFeared() Spell(TREMORTOTEM)
	#/wind_shear
	if TargetIsInterruptible(yes) Spell(WINDSHEAR)
	#/tolvir_potion,if=buff.bloodlust.react|target.time_to_die<=40
	if CheckBoxOn(potions) and TargetClassification(worldboss) and {BuffPresent(heroism) or TargetDeadIn(less 40)} Item(POTIONOFTHETOLVIR)
	#/use_item
	UseItemActions()
	#init_use_profession_actions()
	UseProfessionActions()
	#init_use_racial_actions()
	UseRacialActions()
	#/spirit_wolf
	Spell(FERALSPIRIT)
	#/earth_elemental_totem
	Spell(EARTHELEMENTALTOTEM)
	#/spiritwalkers_grace,moving=1
	if Speed(more 0) Spell(SPIRITWALKERSGRACE)
}

###
### Restoration
###

AddIcon help=buff size=small mastery=3
{
	if TotemExpires(fire)
	{
		unless BuffPresent(SPELLPOWERBUFF) Spell(FLAMETONGUETOTEM)
	}
	if TotemExpires(earth)
	{
		unless BuffPresent(ARMORBUFF) Spell(STONESKINTOTEM)
		unless BuffPresent(strengthagility) Spell(STRENGTHOFEARTHTOTEM)
	}
	if TotemExpires(air)
	{
		unless BuffPresent(spellhaste) Spell(WRATHOFAIRTOTEM)
		unless BuffPresent(meleehaste) Spell(WINDFURYTOTEM)
	}
	if TotemExpires(water)
	{
		unless BuffPresent(MANAREGENBUFF) Spell(MANASPRINGTOTEM)
		Spell(HEALINGSTREAMTOTEM)
	}
}

AddIcon help=main mastery=3
{
	unless InCombat() if WeaponEnchantExpires(mainhand 400) Spell(EARTHLIVINGWEAPON)
	if WeaponEnchantExpires(mainhand 2) Spell(EARTHLIVINGWEAPON)
	unless BuffPresent(WATERSHIELD) Spell(WATERSHIELD)
	if TotemExpires(water) Spell(HEALINGSTREAMTOTEM)
	Spell(RIPTIDE)
}

AddIcon help=aoe mastery=3 checkboxon=aoe
{
	unless InCombat() if WeaponEnchantExpires(mainhand 400) Spell(EARTHLIVINGWEAPON)
	if WeaponEnchantExpires(mainhand 2) Spell(EARTHLIVINGWEAPON)
	unless BuffPresent(WATERSHIELD) Spell(WATERSHIELD)
	if TotemExpires(water) Spell(HEALINGSTREAMTOTEM)
	if TalentPoints(FOCUSEDINSIGHTTALENT more 0)
	{
		if List(shock earth) and spell(HEALINGRAIN) < castTime(EARTHSHOCK) Spell(EARTHSHOCK)
		if List(shock flame) and spell(HEALINGRAIN) < castTime(FLAMESHOCK) Spell(FLAMESHOCK)
		if List(shock frost) and spell(HEALINGRAIN) < castTime(FROSTSHOCK) Spell(FROSTSHOCK)
	}
	Spell(HEALINGRAIN)
	Spell(CHAINHEAL)
}

AddIcon help=cd mastery=3
{
	if IsFeared() Spell(TREMORTOTEM)
	#/wind_shear
	if TargetIsInterruptible(yes) Spell(WINDSHEAR)
	if Speed(more 0) Spell(SPIRITWALKERSGRACE)
	#/spiritwalkers_grace,moving=1
	Spell(SPIRITLINKTOTEM)
	unless List(trinketcd0 000s) Item(Trinket0Slot usable=1)
	unless List(trinketcd1 000s) Item(Trinket1Slot usable=1)
	Spell(FIREELEMENTALTOTEM)
	Spell(EARTHELEMENTALTOTEM)
}

AddIcon help=mana size=small
{
	if ManaPercent(less 80) Spell(MANATIDETOTEM)
	Spell(SHAMANISTICRAGE)
	Spell(THUNDERSTORM)
}

AddIcon help=cd size=small
{
	# survival CD
	if Glyph(GLYPHOFSTONECLAWTOTEM) Spell(STONECLAWTOTEM)

	unless BuffPresent(heroism)
	{
		#/bloodlust,health_percentage<=25
		#/bloodlust,if=target.time_to_die<=60
		if TargetLifePercent(less 25) or TargetDeadIn(less 60)
		{
			Spell(BLOODLUST)
			Spell(HEROISM)
		}
	}
}
]]