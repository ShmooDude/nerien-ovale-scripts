NerienOvaleScripts.script["ROGUE"] =
[[
# Nerien's Rogue Ovale script based on SimulationCraft.
#
# Assassination:
#	talents=http://www.wowhead.com/talent#rogue-033323011302211032100200000000000000002030030000000000000
#	glyphs=mutilate/backstab/rupture/expose_armor/tricks_of_the_trade
#
# Combat:
#	talents=http://www.wowhead.com/talent#rogue-023200000000000000023320303120300123210030000000000000000
#	glyphs=adrenaline_rush/sinister_strike/slice_and_dice/blade_flurry/tricks_of_the_trade/feint/poisons/safe_fall/blurred_speed
#
# Subtlety:
#	talents=http://www.wowhead.com/talent#rogue-023003000000000000000200000000000000000332031321310012321
#	glyphs=backstab/hemorrhage/slice_and_dice/feint/sprint/tricks_of_the_trade/blurred_speed/poisons/safe_fall

# Buffs
Define(DEEPINSIGHT 84747)
Define(FIERYDEVASTATION 99187) # 4pT12 critical strike bonus
Define(FUTUREONFIRE 99186) # 4pT12 haste bonus
Define(HONORAMONGTHIEVES 51701)
Define(MASTEROFSUBTLETY 31223)
Define(MASTEROFTHEFLAMES 99188) # 4pT12 mastery bonus
Define(MODERATEINSIGHT 84746)
Define(OVERKILL 58426)
Define(SHADOWSTEPBUFF 36563)
Define(SHALLOWINSIGHT 84745)
Define(TRICKSOFTIME 105864) # 2pT13 bonus
Define(VANISHBUFF 11327)

# Debuffs
Define(FINDWEAKNESS 91023)
Define(HEMORRHAGEDOT 89775) # Glyph of Hemorrhage

# Glyphs
Define(GLYPHOFHEMORRHAGE 56807)

# Talents
Define(BANDITSGUILETALENT 11174)
Define(CUTTOTHECHASETALENT 2070)
Define(ENERGETICRECOVERYTALENT 11665)
Define(HEMORRHAGETALENT 681)
Define(HONORAMONGTHIEVESTALENT 2078)
Define(MURDEROUSINTENTTALENT 6516)
Define(OVERKILLTALENT 281)
Define(SERRATEDBLADESTALENT 1123)
Define(SHADOWDANCETALENT 2081)
Define(VENDETTATALENT 2071)

# Abilities
Define(ADRENALINERUSH 13750)
	SpellInfo(ADRENALINERUSH cd=180)
	SpellAddBuff(ADRENALINERUSH ADRENALINERUSH=15)
Define(AMBUSH 8676)
	SpellInfo(AMBUSH combo=2 mana=60)
Define(BACKSTAB 53)
	SpellInfo(BACKSTAB combo=1 mana=60)
Define(BLADEFLURRY 13877)
	SpellAddBuff(BLADEFLURRY BLADEFLURRY=1000 cd=10)
Define(CLOAKOFSHADOWS 31224)
	SpellInfo(CLOAKOFSHADOWS cd=90)
Define(COLDBLOOD 14177)
	SpellInfo(COLDBLOOD cd=120)
	SpellAddBuff(COLDBLOOD COLDBLOOD=100)
Define(ENVENOM 32645)
	SpellInfo(ENVENOM combo=-5)
	SpellAddBuff(ENVENOM ENVENOM=5 mana=35)
Define(EVISCERATE 2098)
	SpellInfo(EVISCERATE combo=-5 mana=35)
Define(FEINT 1966)
	SpellInfo(FEINT duration=6 cd=10)
	SpellAddBuff(FEINT FEINT=6)
Define(GARROTE 703)
	SpellInfo(GARROTE combo=1 mana=45)
	SpellAddTargetDebuff(GARROTE GARROTE=18)
Define(HEMORRHAGE 16511)
	SpellInfo(HEMORRHAGE combo=1 mana=35)
	SpellAddTargetDebuff(HEMORRHAGE HEMORRHAGE=60)
Define(KICK 1766)
Define(KILLINGSPREE 51690)
	SpellInfo(KILLINGSPREE cd=120)
	SpellAddBuff(KILLINGSPREE KILLINGSPREE=2)
Define(MUTILATE 1329)
	SpellInfo(MUTILATE combo=1 mana=60)
Define(PREMEDITATION 14183)
	SpellInfo(PREMEDITATION cd=20 combo=2)
Define(PREPARATION 14185)
	SpellInfo(PREPARATION cd=300)
Define(RECUPERATE 73651)
	SpellInfo(RECUPERATE combo=-5 mana=30)
	SpellAddBuff(RECUPERATE RECUPERATE=30)
Define(REVEALINGSTRIKE 84617)
	SpellInfo(REVEALINGSTRIKE combo=1 mana=40)
	SpellAddTargetDebuff(REVEALINGSTRIKE REVEALINGSTRIKE=15)
Define(RUPTURE 1943)
	SpellInfo(RUPTURE combo=-5 mana=25)
	SpellAddTargetDebuff(RUPTURE RUPTURE=8)
Define(SINISTERSTRIKE 1752)
	SpellInfo(SINISTERSTRIKE combo=1 mana=45)
Define(SHADOWDANCE 51713)
	SpellInfo(SHADOWDANCE cd=60)
	SpellAddBuff(SHADOWDANCE SHADOWDANCE=6)
Define(SHADOWSTEP 36554)
	SpellInfo(SHADOWSTEP cd=20)
	SpellAddBuff(SHADOWSTEP SHADOWSTEPBUFF=10)
Define(SHIV 5938)
	SpellInfo(SHIV combo=1 mana=20)
Define(SLICEANDDICE 5171)
	SpellInfo(SLICEANDDICE combo=-5 mana=25)
	SpellAddBuff(SLICEANDDICE SLICEANDDICE=10)
Define(STEALTH 1784)
Define(TRICKSOFTHETRADE 57934)
	SpellInfo(TRICKSOFTHETRADE cd=30)
Define(VANISH 1856)
	SpellInfo(VANISH cd=180)
	SpellAddBuff(VANISH VANISHBUFF=3)
Define(VENDETTA 79140)
	SpellInfo(VENDETTA cd=120)
	SpellAddTargetDebuff(VENDETTA VENDETTA=30)

# Racials & Professions
Define(ARCANETORRENTENERGY 25046) # blood elf
	SpellInfo(ARCANETORRENTENERGY sharedcd=racial cd=120)
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
Define(DEADLYPOISON 2892)
Define(INSTANTPOISON 6947)
Define(POTIONOFTHETOLVIR 58145)
	Define(POTIONOFTHETOLVIRSPELL 80495)

AddCheckBox(potions SpellName(POTIONOFTHETOLVIRSPELL) default)
AddCheckBox(tricks SpellName(TRICKSOFTHETRADE) default)
AddCheckBox(ejcombat "EJ Combat CD Usage" talent=BANDITSGUILETALENT)
AddCheckBox(hemorrhage SpellName(HEMORRHAGE) talent=HEMORRHAGETALENT)
AddCheckBox(shadowstep SpellName(SHADOWSTEP) default mastery=3)
AddCheckBox(honoramongthieves SpellName(HONORAMONGTHIEVES) default talent=HONORAMONGTHIEVESTALENT)

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
	if Mana(less 81) Spell(ARCANETORRENTENERGY)
	Spell(BERSERKING)
	Spell(BLOODFURY)
}

###
### Assassination
###
AddIcon help=main mastery=1
{
	unless InCombat()
	{
		if WeaponEnchantExpires(mainhand 400) Item(INSTANTPOISON)
		if WeaponEnchantExpires(offhand 400) Item(DEADLYPOISON)
	}

	#/apply_poison,main_hand=instant,off_hand=deadly
	if WeaponEnchantExpires(mainhand 5) Item(INSTANTPOISON)
	if WeaponEnchantExpires(offhand 5) Item(DEADLYPOISON)
	unless TargetInRange(SHIV) Texture(ability_dualwield)
	#/garrote
	if Stealthed() Spell(GARROTE)
	#/slice_and_dice,if=buff.slice_and_dice.down
	unless BuffPresent(SLICEANDDICE) if ComboPoints(more 0) Spell(SLICEANDDICE)
	#/pool_energy,if=energy<60&buff.slice_and_dice.remains<5
	unless TalentPoints(CUTTOTHECHASETALENT more 0) or Mana(more 59) or BuffPresent(SLICEANDDICE 5)
	{
		unless TalentPoints(CUTTOTHECHASETALENT more 0)
		{
			#/slice_and_dice,if=combo_points>=3&buff.slice_and_dice.remains<2
			if ComboPoints(more 2) and BuffExpires(SLICEANDDICE 2) Spell(SLICEANDICE)
		}
		if TalentPoints(VENDETTATALENT more 0)
		{
			#/rupture,if=(!ticking|ticks_remain<2)&time<6
			if TargetDebuffExpires(RUPTURE 2 mine=1) and TimeInCombat(less 6) and ComboPoints(more 0) Spell(RUPTURE)
		}
		#/rupture,if=(!ticking|ticks_remain<2)&buff.slice_and_dice.remains>6
		if TargetDebuffExpires(RUPTURE 2 mine=1) and BuffPresent(SLICEANDDICE 6) and ComboPoints(more 0) Spell(RUPTURE)
		#/envenom,if=combo_points>=4&buff.envenom.down
		if ComboPoints(more 3) and BuffExpires(ENVENOM 0) Spell(ENVENOM)
		#/envenom,if=combo_points>=4&energy>90
		if ComboPoints(more 3) and Mana(more 90) Spell(ENVENOM)
		#/envenom,if=combo_points>=2&buff.slice_and_dice.remains<3
		if ComboPoints(more 1) and BuffExpires(SLICEANDDICE 3) Spell(ENVENOM)
		if TalentPoints(MURDEROUSINTENTTALENT more 0)
		{
			#/backstab,if=combo_points<5&target.health_pct<35
			#/mutilate,if=position_front&combo_points<5&target.health_pct<35
			if ComboPoints(less 5) and TargetLifePercent(less 35) Spell(BACKSTAB)
		}
		#/mutilate,if=combo_points<4&target.health_pct>=35
		if ComboPoints(less 4) Spell(MUTILATE)
	}
}

AddIcon help=cd mastery=1
{
	if InCombat(no)
	{
		#/stealth
		if TalentPoints(OVERKILLTALENT more 0) and Stealthed(no) Spell(STEALTH)
		#/tolvir_potion,if=!in_combat
		if CheckBoxOn(potions) and TargetClassification(worldboss) Item(POTIONOFTHETOLVIR)
	}
	#/kick
	if TargetIsInterruptible() and TargetInRange(KICK) Spell(KICK)
	#/tolvir_potion,if=buff.bloodlust.react|target.time_to_die<30
	if CheckBoxOn(potions) and TargetClassification(worldboss) and {BuffPresent(heroism) or TargetDeadIn(less 30)} Item(POTIONOFTHETOLVIR)
	#init_use_item_actions()
	UseItemActions()
	#init_use_profession_actions()
	UseProfessionActions()
	#init_use_racial_actions()
	UseRacialActions()
	#/tricks_of_the_trade,if=set_bonus.tier12_4pc_melee|set_bonus.tier13_2pc_melee
	if CheckBoxOn(tricks) and {ArmorSetParts(T12 more 3) or ArmorSetParts(T13 more 1)} Spell(TRICKSOFTHETRADE)
	unless TalentPoints(CUTTOTHECHASETALENT less 1) and Mana(less 59) and BuffExpires(SLICEANDDICE 5)
	{
		unless {TalentPoints(CUTTOTHECHASETALENT less 1) and ComboPoints(more 2) and BuffExpires(SLICEANDDICE 2)}
			or {TargetDebuffExpires(RUPTURE 2 mine=1) and TimeInCombat(less 6) and ComboPoints(more 0)}
		{
			#/vendetta
			unless TargetDebuffPresent(VENDETTA) Spell(VENDETTA)
		}
		#/rupture,if=(!ticking|ticks_remain<2)&buff.slice_and_dice.remains>6
		unless TargetDebuffExpires(RUPTURE 2 mine=1) and BuffPresent(SLICEANDDICE 6) and ComboPoints(more 0)
		{
			#/cold_blood,sync=envenom
			if {ComboPoints(more 3) and BuffExpires(ENVENOM 0)}
				or {ComboPoints(more 3) and Mana(more 90)}
				or {ComboPoints(more 1) and BuffExpires(SLICEANDDICE 3)}
			{
				if 1s before Spell(ENVENOM)
				{
					Spell(COLDBLOOD)
				}
			}
			if TalentPoints(OVERKILLTALENT more 0) and BuffExpires(OVERKILL)
			{
				unless {ComboPoints(more 3) and BuffExpires(ENVENOM 0)}
					or {ComboPoints(more 3) and Mana(more 90)}
					or {ComboPoints(more 1) and BuffExpires(SLICEANDDICE 3)}
					or {TalentPoints(MURDEROUSINTENTTALENT more 0) and {ComboPoints(less 5) and TargetLifePercent(less 35)}}
					or ComboPoints(less 4)
				{
					#/vanish,if=time>30&energy>50
					if TimeInCombat(more 30) and Mana(more 50) Spell(VANISH)
				}
			}
		}
	}
}

###
### Combat
###
AddIcon help=main mastery=2
{
	unless InCombat()
	{
		if WeaponEnchantExpires(mainhand 400) Item(INSTANTPOISON)
		if WeaponEnchantExpires(offhand 400) Item(DEADLYPOISON)
	}

	#/apply_poison,main_hand=instant,off_hand=deadly
	if WeaponEnchantExpires(mainhand 5) Item(INSTANTPOISON)
	if WeaponEnchantExpires(offhand 5) Item(DEADLYPOISON)
	#/slice_and_dice,if=buff.slice_and_dice.down
	#/slice_and_dice,if=buff.slice_and_dice.remains<2
	if BuffExpires(SLICEANDDICE 2) and ComboPoints(more 0) Spell(SLICEANDDICE)
	unless TargetInRange(SHIV) Texture(ability_dualwield)
	#/eviscerate,if=combo_points=5&buff.bandits_guile.stack>=12
	if TalentPoints(BANDITSGUILETALENT more 0) and ComboPoints(more 4) and BuffPresent(DEEPINSIGHT) Spell(EVISCERATE)
	#/rupture,if=!ticking&combo_points=5&target.time_to_die>10
	unless TargetDebuffPresent(RUPTURE mine=1) or BuffPresent(BLADEFLURRY)
	{
		# ElitistJerks says Rupture is only worth using if target is has a debuff that increases bleed damage taken.
		if TargetDebuffPresent(bleed) and ComboPoints(more 4) and TargetDeadIn(more 10) Spell(RUPTURE)
	}
	#/eviscerate,if=combo_points=5
	if ComboPoints(more 4) Spell(EVISCERATE)
	#/revealing_strike,if=combo_points=4&buff.revealing_strike.down
	unless TargetBuffPresent(REVEALINGSTRIKE mine=1)
		if ComboPoints(more 3) and ComboPoints(less 5) Spell(REVEALINGSTRIKE)
	#/sinister_strike,if=combo_points<5
	if ComboPoints(less 5) Spell(SINISTERSTRIKE)
}

AddIcon help=cd mastery=2
{
	#/tolvir_potion,if=!in_combat
	if InCombat(no) and CheckBoxOn(potions) and TargetClassification(worldboss) Item(POTIONOFTHETOLVIR)
	#/kick
	if TargetIsInterruptible() and TargetInRange(KICK) Spell(KICK)
	#/tolvir_potion,if=buff.bloodlust.react|target.time_to_die<30
	if CheckBoxOn(potions) and TargetClassification(worldboss) and {BuffPresent(heroism) or TargetDeadIn(less 30)} Item(POTIONOFTHETOLVIR)
	#init_use_item_actions()
	UseItemActions()
	#init_use_profession_actions()
	UseProfessionActions()
	#init_use_racial_actions()
	UseRacialActions()
	#/tricks_of_the_trade,if=set_bonus.tier12_4pc_melee|set_bonus.tier13_2pc_melee
	if CheckBoxOn(tricks)
	{
		if ArmorSetParts(T12 more 3) Spell(TRICKSOFTHETRADE)
		if ArmorSetParts(T13 more 1)
			unless BuffPresent(ADRENALINERUSH) or BuffPresent(KILLINGSPREE) Spell(TRICKSOFTHETRADE)
	}
	unless BuffExpires(SLICEANDDICE 2) and ComboPoints(more 0)
	{
		#/killing_spree,if=energy<35&buff.slice_and_dice.remains>4&buff.adrenaline_rush.down
		if Mana(less 35) and BuffPresent(SLICEANDDICE 4)
		{
			unless BuffPresent(ADRENALINERUSH) or BuffPresent(TRICKSOFTIME)
			{
				# ElitistJerks recommends waiting for Deep Insight.
				if CheckBoxOff(ejcombat) or BuffPresent(DEEPINSIGHT) Spell(KILLINGSPREE)
			}
		}
		#/adrenaline_rush,if=energy<35
		if Mana(less 35)
		{
			unless BuffPresent(KILLINGSPREE) or BuffPresent(TRICKSOFTIME)
			{
				# ElitistJerks recommends waiting for Moderate or Deep Insight.
				if CheckBoxOff(ejcombat) or BuffPresent(MODERATEINSIGHT) or BuffPresent(DEEPINSIGHT) Spell(ADRENALINERUSH)
			}
		}
	}
}

###
### Subtlety
###
AddIcon help=main mastery=3
{
	unless InCombat()
	{
		if WeaponEnchantExpires(mainhand 400) Item(INSTANTPOISON)
		if WeaponEnchantExpires(offhand 400) Item(DEADLYPOISON)
	}

	# Maintain raid debuffs.
	if CheckBoxOn(hemorrhage) and TalentPoints(HEMORRHAGETALENT more 0) and TargetDebuffExpires(bleed 2) Spell(HEMORRHAGE)

	#/apply_poison,main_hand=instant,off_hand=deadly
	if WeaponEnchantExpires(mainhand 5) Item(INSTANTPOISON)
	if WeaponEnchantExpires(offhand 5) Item(DEADLYPOISON)
	if Stealthed() or BuffPresent(SHADOWDANCE)
	{
		#/shadowstep,if=buff.stealthed.up|buff.shadow_dance.up
		if CheckBoxOn(shadowstep) Spell(SHADOWSTEP)
		#/premeditation,if=(combo_points<=3&cooldown.honor_among_thieves.remains>1.75)|combo_points<=2
		if ComboPoints(less 3) Spell(PREMEDITATION)
	}
	unless TargetInRange(SHIV) Texture(ability_dualwield)
	#/ambush,if=combo_points<=4
	if ComboPoints(less 5) and {Stealthed() or BuffPresent(SHADOWDANCE)} Spell(AMBUSH)
	#/slice_and_dice,if=buff.slice_and_dice.remains<3&combo_points=5
	if BuffExpires(SLICEANDDICE 3) and ComboPoints(more 4) Spell(SLICEANDDICE)
	#/rupture,if=combo_points=5&!ticking
	if ComboPoints(more 4) and TargetDeadIn(more 20) unless TargetDebuffPresent(RUPTURE mine=1) Spell(RUPTURE)
	#/recuperate,if=combo_points=5&remains<3
	if TalentPoints(ENERGETICRECOVERYTALENT more 0) and ComboPoints(more 4) and BuffExpires(RECUPERATE 3) Spell(RECUPERATE)
	#/eviscerate,if=combo_points=5&dot.rupture.remains>1
	if ComboPoints(more 4)
	{
		if TargetDeadIn(less 20) Spell(EVICERATE)
		if TargetDebuffPresent(RUPTURE 1 mine=1) Spell(EVICERATE)
	}
	if TalentPoints(HEMORRHAGETALENT more 0) and Glyph(GLYPHOFHEMORRHAGE)
	{
		#/hemorrhage,if=combo_points<4&dot.hemorrhage.remains<4
		if ComboPoints(less 4) and TargetDebuffExpires(HEMORRHAGEDOT 4 mine=1) Spell(HEMORRHAGE nored=1)
		#/hemorrhage,if=combo_points<5&energy>80&dot.hemorrhage.remains<4
		if ComboPoints(less 5) and Mana(more 80) and TargetDebuffExpires(HEMORRHAGEDOT 4 mine=1) Spell(HEMORRHAGE nored=1)
	}
	#/backstab,if=combo_points<4
	if ComboPoints(less 4) Spell(BACKSTAB)
	if CheckBoxOff(honoramongthieves)
	{
		#/backstab,if=combo_points<5&energy>80
		if ComboPoints(less 5) and Mana(more 80) Spell(BACKSTAB)
	}
	# Fallback Backstab to prevent energy capping
	if 1s before Mana(more 99) Spell(BACKSTAB)
}

AddIcon help=cd mastery=3
{
	#/stealth
	unless InCombat() or Stealthed() Spell(STEALTH)
	#/pool_energy,for_next=1
	#/shadow_dance,if=energy>85&combo_points<5&buff.stealthed.down
	if TalentPoints(SHADOWDANCETALENT more 0) and Mana(more 85) and ComboPoints(less 5) and Stealthed(no) Spell(SHADOWDANCE)
	unless TalentPoints(SHADOWDANCETALENT more 0) and Spell(SHADOWDANCE) and ComboPoints(less 5) and Stealthed(no)
	{
		#/pool_energy,for_next=1
		#/vanish,if=time>10&energy>60&combo_points<=1&cooldown.shadowstep.remains<=0&\
		#	!buff.shadow_dance.up&!buff.master_of_subtlety.up&!buff.find_weakness.up
		if TimeInCombat(more 10) and Mana(more 60) and ComboPoints(less 2) and Spell(SHADOWSTEP) and Stealthed(no)
			and BuffExpires(SHADOWDANCE 0) and BuffExpires(MASTEROFSUBTLETY 0) and TargetDebuffExpires(FINDWEAKNESS 0 mine=1)
		{
			Spell(VANISH)
		}
		unless {TimeInCombat(more 10) and ComboPoints(less 2) and Spell(SHADOWSTEP) and Stealthed(no)
				and BuffExpires(SHADOWDANCE 0) and BuffExpires(MASTEROFSUBTLETY 0) and TargetDebuffExpires(FINDWEAKNESS 0 mine=1)}
			or {ComboPoints(less 5) and {Stealthed() or BuffPresent(SHADOWDANCE)}}
		{
			#/preparation,if=cooldown.vanish.remains>60
			unless 60s before Spell(VANISH) Spell(PREPARATION)
		}
	}
}

AddIcon help=cd mastery=3
{
	#/tolvir_potion,if=!in_combat
	if InCombat(no) and CheckBoxOn(potions) and TargetClassification(worldboss) Item(POTIONOFTHETOLVIR)
	#/kick
	if TargetIsInterruptible() and TargetInRange(KICK) Spell(KICK)
	#/tolvir_potion,if=buff.bloodlust.react|target.time_to_die<30
	if CheckBoxOn(potions) and TargetClassification(worldboss) and {BuffPresent(heroism) or TargetDeadIn(less 30)} Item(POTIONOFTHETOLVIR)
	#/tricks_of_the_trade,if=set_bonus.tier12_4pc_melee|set_bonus.tier13_2pc_melee
	if CheckBoxOn(tricks) and {ArmorSetParts(T12 more 3) or ArmorSetParts(T13 more 1)} Spell(TRICKSOFTHETRADE)
	unless TalentPoints(SHADOWDANCETALENT more 0) and Spell(SHADOWDANCE) and ComboPoints(less 5) and Stealthed(no)
	{
		if BuffPresent(SHADOWDANCE)
		{
			#use_item,if=buff.shadow_dance.up
			UseItemActions()
			#init_use_profession_actions( ( found_item >= 0 ) ? "" : ",if=buff.shadow_dance.up|position_front" )
			UseProfessionActions()
			#init_use_racial_actions( ",if=buff.shadow_dance.up" )
			UseRacialActions()
		}
	}
}

AddIcon size=small
{
	Spell(TRICKSOFTHETRADE)
}

AddIcon size=small
{
	if TargetInRange(FEINT) Spell(FEINT)
	Spell(CLOAKOFSHADOWS)
	Spell(STONEFORM)
}
]]