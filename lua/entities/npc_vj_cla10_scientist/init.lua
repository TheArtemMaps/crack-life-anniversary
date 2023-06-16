AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2021 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/cla/scientist.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 100
ENT.HullType = HULL_HUMAN
ENT.VJC_Data = {
    ThirdP_Offset = Vector(10, 0, 0), -- The offset for the controller when the camera is in third person
    FirstP_Bone = "Bip02 Head", -- If left empty, the base will attempt to calculate a position for first person
    FirstP_Offset = Vector(2, 0, 0), -- The offset for the controller when the camera is in first person
}

---------------------------------------------------------------------------------------------------------------------------------------------
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.BloodDecalUseGMod = true
ENT.HasBloodDecal = true -- Does it spawn a decal when damaged?
ENT.HasBloodPool = true -- Does it have a blood pool?
ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY"} -- NPCs with the same class with be allied to each other
ENT.CanOpenDoors = true -- Can it open doors?
ENT.DeathAnimationTime = 3 -- Time until the SNPC spawns its corpse and gets removed
ENT.DeathCorpseApplyForce = true
ENT.DeathAnimationDecreaseLengthAmount = 1
ENT.HasGibDeathParticles = true
-- ====== On Player Sight Variables ====== --
ENT.HasOnPlayerSight = true -- Should do something when it sees the enemy? Example: Play a sound
ENT.OnPlayerSightDistance = 200 -- How close should the player be until it runs the code?
ENT.OnPlayerSightDispositionLevel = 1 -- 0 = Run it every time | 1 = Run it only when friendly to player | 2 = Run it only when enemy to player
ENT.OnPlayerSightOnlyOnce = true -- If true, it will only run the code once | Sets self.HasOnPlayerSight to false once it runs!
ENT.OnPlayerSightNextTime = VJ_Set(15, 20) -- How much time should it pass until it runs the code again?
ENT.CustomBlood_Particle = {"vj_hlr_blood_red"}
ENT.CustomBlood_Decal = {"VJ_HLR_Blood_Red"} -- Decals to spawn when it's damaged
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {ACT_DIEBACKWARD,ACT_DIEFORWARD,ACT_DIESIMPLE,ACT_DIE_HEADSHOT,ACT_DIE_GUTSHOT} -- Death Animations
ENT.HasDeathRagdoll = true
ENT.AttackProps = true
ENT.HasItemDropsOnDeath = false
ENT.BringFriendsOnDeath = true -- Should the SNPC's friends come to its position before it dies?
ENT.BringFriendsOnDeathDistance = 800 -- How far away does the signal go? | Counted in World Units
ENT.BringFriendsOnDeathLimit = 5 -- How many people should it call? | 0 = Unlimited
ENT.InvestigateSoundDistance = 20
ENT.MovementType = VJ_MOVETYPE_GROUND
ENT.DisableChasingEnemy = false
ENT.DisableWeapons = true
ENT.CanDetectDangers = true -- Should the NPC detect dangers? | This includes grenades!
ENT.DangerDetectionDistance = 400
ENT.CallForHelp = true -- Does the SNPC call for help?
ENT.CallForHelpDistance = 2000 -- -- How far away the SNPC's call for help goes | Counted in World Units
ENT.NextCallForHelpTime = 4 -- Time until it calls for help again
ENT.HasFootStepSound = true
ENT.BecomeEnemyToPlayer = true -- Should the friendly SNPC become enemy towards the player if it's damaged by it or it witnesses another ally killed by it
ENT.BecomeEnemyToPlayerLevel = 2 -- Any time the player does something bad, the NPC's anger level raises by 1, if it surpasses this, it will become enemy!
ENT.HasBecomeEnemyToPlayerSounds = true -- If set to false, it won't play the become enemy to player sounds
ENT.DisableFootStepSoundTimer = false -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
ENT.FootStepTimeWalk = 0.4 -- Next foot step sound when it is walking
ENT.FootStepTimeRun = 0.2 -- Next foot step sound when it is walking
ENT.DisableFootStepOnRun = false -- It will not play the footstep sound when running
ENT.DisableFootStepOnWalk = false -- It will not play the footstep sound when walking
ENT.NoChaseAfterCertainRange = true -- Should the SNPC not be able to chase when it's between number x and y?
ENT.NoChaseAfterCertainRange_FarDistance = 200 -- How far until it can chase again? | "UseRangeDistance" = Use the number provided by the range attack instead
ENT.DisableChasingEnemy = false -- Disables the SNPC chasing the enemy
ENT.HasMeleeAttackMissSounds = true -- If set to false, it won't play the melee attack miss sound
ENT.HasMeleeAttackSounds = true -- If set to false, it won't play the melee attack sound
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.AnimTbl_Flinch = {ACT_SMALL_FLINCH} -- If it uses normal based animation, use this
ENT.HitGroupFlinching_Values = {{HitGroup = {HITGROUP_LEFTLEG}, Animation = {ACT_FLINCH_LEFTLEG}},{HitGroup = {HITGROUP_RIGHTLEG}, Animation = {ACT_FLINCH_RIGHTLEG}}}
-- ====== Idle dialogue Sound Variables ====== --
	-- When an allied SNPC or a allied player is in range, the SNPC will play a different sound table. If the ally is a VJ SNPC and has dialogue answer sounds, it will respond to this SNPC
ENT.HasIdleDialogueSounds = true -- If set to false, it won't play the idle dialogue sounds
ENT.HasIdleDialogueAnswerSounds = true -- If set to false, it won't play the idle dialogue answer sounds
ENT.IdleDialogueDistance = 400 -- How close should the ally be for the SNPC to talk to the ally?
ENT.IdleDialogueCanTurn = true -- If set to false, it won't turn when a dialogue occurs
ENT.HasMedicSounds_ReceiveHeal = false -- If set to false, it won't play any sounds when it receives a medkit
-- ====== Medic Variables ====== --
ENT.IsMedicSNPC = true -- Is this SNPC a medic? Does it heal other friendly friendly SNPCs, and players(If friendly)
ENT.Medic_DisableAnimation = true -- if true, it will disable the animation code
ENT.AnimTbl_Medic_GiveHealth = {ACT_ARM,ACT_MELEE_ATTACK2,ACT_DISARM} -- Animations is plays when giving health to an ally
ENT.Medic_TimeUntilHeal = 5 -- Time until the ally receives health | Set to false to let the base decide the time
ENT.Medic_CheckDistance = 600 -- How far does it check for allies that are hurt? | World units
ENT.Medic_HealDistance = 100 -- How close does it have to be until it stops moving and heals its ally?
ENT.Medic_HealthAmount = 0 -- How health does it give?
ENT.Medic_NextHealTime = VJ_Set(10, 15) -- How much time until it can give health to an ally again
ENT.Medic_SpawnPropOnHeal = false -- Should it spawn a prop, such as small health vial at a attachment when healing an ally?
ENT.Medic_SpawnPropOnHealModel = "models/healthvial.mdl" -- The model that it spawns
ENT.Medic_SpawnPropOnHealAttachment = "anim_attachment_LH" -- The attachment it spawns on
ENT.Medic_CanBeHealed = false -- If set to false, this SNPC can't be healed!
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------ Melee Attack Variables ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = 15
ENT.MeleeAttackDamageType = DMG_SLASH -- Type of Damage
ENT.HasMeleeAttackKnockBack = false -- Should knockback be applied on melee hit? | Use self:MeleeAttackKnockbackVelocity() to edit the velocity
	-- ====== Animation Variables ====== --
ENT.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1} -- Melee Attack Animations
ENT.MeleeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.MeleeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the melee attack animation?
ENT.MeleeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.MeleeAttackAnimationAllowOtherTasks = false -- If set to true, the animation will not stop other tasks from playing, such as chasing | Useful for gesture attacks!
	-- ====== Distance Variables ====== --
ENT.MeleeAttackDistance = 50 -- How close does it have to be until it attacks?
ENT.MeleeAttackAngleRadius = 100 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
ENT.MeleeAttackDamageDistance = 100 -- How far does the damage go?
ENT.MeleeAttackDamageAngleRadius = 100 -- What is the damage angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
	-- ====== Timer Variables ====== --
	-- To use event-based attacks, set this to false:
ENT.TimeUntilMeleeAttackDamage = 0.4 -- This counted in seconds | This calculates the time until it hits something
ENT.NextMeleeAttackTime = 0 -- How much time until it can use a melee attack?
ENT.NextMeleeAttackTime_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
	-- To let the base automatically detect the attack duration, set this to false:
ENT.NextAnyAttackTime_Melee = false -- How much time until it can use any attack again? | Counted in Seconds
ENT.NextAnyAttackTime_Melee_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
ENT.MeleeAttackReps = 1 -- How many times does it run the melee attack code?
ENT.MeleeAttackExtraTimers = nil -- Extra melee attack timers, EX: {1, 1.4} | it will run the damage code after the given amount of seconds
ENT.StopMeleeAttackAfterFirstHit = false -- Should it stop the melee attack from running rest of timers when it hits an enemy?
	-- ====== Control Variables ====== --
ENT.DisableMeleeAttackAnimation = false -- if true, it will disable the animation code
ENT.DisableDefaultMeleeAttackCode = false -- When set to true, it will completely disable the melee attack code
ENT.DisableDefaultMeleeAttackDamageCode = false -- Disables the default melee attack damage code
	-- ====== Miscellaneous Variables ====== --
ENT.HideOnUnknownDamage = 5 -- number = Hide on unknown damage, defines the time until it can hide again | false = Disable this AI component
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SCI_NextMouthMove = 0
ENT.SCI_NextMouthDistance = 0
ENT.SpawnNeedle = true
ENT.SoundTbl_FootStep = {
"steps/npc_step1.wav",
"steps/npc_step2.wav",
"steps/npc_step3.wav",
"steps/npc_step4.wav"
}

ENT.SoundTbl_Alert = {
"scientistcla/angry1.wav",
"scientistcla/angry2.wav",
"scientistcla/angry3.wav",
"scientistcla/angry4.wav",
"scientistcla/angry5.wav",
"scientistcla/shutup2.wav",
"scientistcla/canttakemore.wav",
"scientistcla/sc_answer3.wav",
"scientistcla/shutupbitch.wav"
}

ENT.SoundTbl_Idle = {
"scientistcla/africa.wav",
"scientistcla/reddit.wav",
"scientistcla/shittyties.wav",
"scientistcla/amogus.wav",
"scientistcla/bathrooms.wav",
"scientistcla/hsgtf.wav",
"scientistcla/milky.wav",
"scientistcla/thatsgay.wav",
"scientistcla/wifesboyfriend.wav"
}

ENT.SoundTbl_OnPlayerSight = {
"scientistcla/fuckitsfreeman.wav",
"scientistcla/itsyou.wav",
"scientistcla/sci_fear7.wav",
"scientistcla/greetings.wav",
"scientistcla/whaddup.wav",
"scientistcla/whatarethose.wav",
"scientistcla/c3a2_sci_fool.wav",
"scientistcla/scream05.wav",
"scientistcla/c1a0_sci_crit3a.wav",
"scientistcla/c1a0_sci_ctrl1a.wav",
"scientistcla/c1a0_sci_ctrl2a.wav"
}

ENT.SoundTbl_IdleDialogue = {
"scientistcla/ihavecrabs.wav",
"scientistcla/shityourself.wav",
"scientistcla/shittyties.wav",
"scientistcla/sc_question1.wav",
"scientistcla/sc_question2.wav",
"scientistcla/sc_question3.wav",
"scientistcla/sc_question4.wav",
"scientistcla/sc_question5.wav",
"scientistcla/sc_question6.wav",
"scientistcla/sc_question7.wav",
"scientistcla/sc_question8.wav",
"scientistcla/sc_question9.wav",
"scientistcla/sc_question10.wav",
"scientistcla/sc_question11.wav",
"scientistcla/sc_question12.wav",
"scientistcla/sc_question13.wav",
"scientistcla/sc_question14.wav",
"scientistcla/sc_question15.wav",
"scientistcla/sc_question16.wav",
"scientistcla/sc_question17.wav",
"scientistcla/sc_question18.wav",
"scientistcla/sc_question19.wav",
"scientistcla/batka.wav",
"scientistcla/c1a0_sci_mumble.wav"
}

ENT.SoundTbl_IdleDialogueAnswer = {
"scientistcla/sc_answer1.wav",
"scientistcla/sc_answer2.wav",
"scientistcla/sc_answer3.wav",
"scientistcla/sc_answer4.wav",
"scientistcla/sc_answer5.wav",
"scientistcla/sc_answer6.wav",
"scientistcla/sc_answer7.wav",
"scientistcla/sc_answer8.wav",
"scientistcla/sc_answer9.wav",
"scientistcla/sc_answer10.wav",
"scientistcla/sc_answer11.wav",
"scientistcla/sc_answer12.wav",
"scientistcla/shutupbitch.wav",
"scientistcla/shutup2.wav",
"scientistcla/fuckingwrong.wav",
"scientistcla/shityourself.wav",
"scientistcla/thatsgay.wav",
"scientistcla/c1a0_sci_mumble.wav"
}

ENT.SoundTbl_FollowPlayer = {
"scientistcla/excellentteam.wav",
"scientistcla/fellowscientist.wav",
"Scientistcla/fine.wav",
"scientistcla/hopeyouknow.wav",
"scientistcla/leadtheway.wav",
"scientistcla/letsgo.wav",
"scientistcla/yesletsgo.wav",
"scientistcla/yes3.wav",
"scientistcla/alright.wav"

}
ENT.SoundTbl_UnFollowPlayer = {
"scientistcla/beenaburden.wav",
"scientistcla/slowingyou.wav",
"scientistcla/reconsider.wav",
"scientistcla/whyleavehere.wav",
"scientistcla/illwaithere.wav",
"scientistcla/istay.wav",
"scientistcla/illwait.wav"
}

ENT.SoundTbl_MeleeAttack = {
"scientistcla/claw_strike1.wav",
"scientistcla/claw_strike2.wav",
"scientistcla/claw_strike3.wav"
}
ENT.SoundTbl_MeleeAttackMiss = {
"scientistcla/claw_miss1.wav",
"scientistcla/claw_miss2.wav"
}

ENT.SoundTbl_MedicBeforeHeal = {
"scientistcla/angry5.wav",
"scientistcla/fedora1.wav",
"scientistcla/sc_answer2.wav",
"scientistcla/sc_answer5.wav",
"scientistcla/angry3.wav",
"scientistcla/angry2.wav",
"scientistcla/youlookbad.wav",
"scientistcla/youlookbad2.wav",
"scientistcla/youneedmedic.wav",
"scientistcla/youwounded.wav",
"scientistcla/thiswillhelp.wav",
"scientistcla/letstrythis.wav",
"scientistcla/letmehelp.wav",
"scientistcla/holdstill.wav",
"scientistcla/heal1.wav",
"scientistcla/heal2.wav",
"scientistcla/heal3.wav",
"scientistcla/heal4.wav",
"scientistcla/heal5.wav"
}

ENT.SoundTbl_BecomeEnemyToPlayer = {
"scientistcla/angry1.wav",
"scientistcla/angry2.wav",
"scientistcla/angry3.wav",
"scientistcla/angry4.wav",
"scientistcla/angry5.wav",
"scientistcla/shutup2.wav",
"scientistcla/canttakemore.wav",
"scientistcla/sc_answer3.wav",
"scientistcla/shutupbitch.wav",
"scientistcla/c1a0_sci_getaway.wav"
}

ENT.SoundTbl_Investigate = {"scientistcla/whatissound.wav","scientistcla/overhere.wav","scientistcla/lowervoice.wav","scientistcla/ihearsomething.wav","scientistcla/hello2.wav","scientistcla/hearsomething.wav","scientistcla/didyouhear.wav","scientistcla/d01_sci10_interesting.wav","scientistcla/c3a2_sci_1glu.wav", "scientistcla/c1a0_sci_lock1a.wav"}

ENT.SoundTbl_Pain = {"scientistcla/sci_pain1.wav","scientistcla/sci_pain2.wav","scientistcla/sci_pain3.wav","scientistcla/sci_pain4.wav","scientistcla/sci_pain5.wav","scientistcla/sci_pain6.wav","scientistcla/sci_pain7.wav","scientistcla/sci_pain8.wav","scientistcla/sci_pain9.wav","scientistcla/sci_pain10.wav"}
ENT.SoundTbl_Death = {"scientistcla/scream5.wav","scientistcla/scream21.wav","scientistcla/sci_die1.wav","scientistcla/sci_die2.wav","scientistcla/sci_die3.wav","scientistcla/sci_die4.wav","scientistcla/sci_dragoff.wav"}

ENT.GeneralSoundPitch1 = 100

---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMedic_BeforeHeal()
	-- Healing routine
	timer.Simple(1.5, function() if IsValid(self) then self:SetBodygroup(2, 1) end end)
	self:VJ_ACT_PLAYACTIVITY("ACT_ARM", true, false, false, 0, {OnFinish=function(interrupted, anim)
		if interrupted then return end
		self:VJ_ACT_PLAYACTIVITY("ACT_MELEE_ATTACK2", true, false, false, 0, {OnFinish=function(interrupted2, anim2)
			if interrupted2 then return end
			self:VJ_ACT_PLAYACTIVITY("ACT_DISARM", true, false)
		end})
	end})
end

function ENT:CustomOnMedic_OnReset()
	timer.Simple(0.5, function() if IsValid(self) then self:SetBodygroup(2, 0) end end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
        -- Randomize the bodygroups in subgroup 1
        local iBodygroupRNGZero = math.random( 1 , 6 )
        self:SetBodygroup( 1 , iBodygroupRNGZero )

	if iBodygroupRNGZero == 2 then
		self:SetSkin(1)
	end
if iBodygroupRNGZero == 4 then
self.SoundTbl_FollowPlayer = {"scientistcla/batka.wav"}	
self.SoundTbl_UnFollowPlayer = {"scientistcla/batka.wav"}	
end
end

function ENT:CustomOnPriorToKilled(dmginfo, hitgroup)
	if self.SpawnNeedle == true then
		self:SetBodygroup(2,0)
		self:CreateGibEntity("obj_vj_gib","models/cla/bigneedle.mdl",{BloodDecal="",Pos=self:LocalToWorld(Vector(0,0,0)),CollideSound={""}})
		self.SpawnNeedle = false
	end
end

function ENT:CustomOnThink()
	-- Mouth animation when talking
	if CurTime() < self.SCI_NextMouthMove then
		if self.SCI_NextMouthDistance == 0 then
			self.SCI_NextMouthDistance = math.random(10,70)
		else
			self.SCI_NextMouthDistance = 0
		end
		self:SetPoseParameter("m", self.SCI_NextMouthDistance)
	else
		self:SetPoseParameter("m", 0)
	end
end

function ENT:OnPlayCreateSound(sdData, sdFile)
	self.SCI_NextMouthMove = CurTime() + SoundDuration(sdFile)
end

function ENT:SetUpGibesOnDeath(dmginfo, hitgroup)
	self.HasDeathSounds = false
	if self.HasGibDeathParticles == true then
		local effectBlood = EffectData()
		effectBlood:SetOrigin(self:GetPos() + self:OBBCenter())
		effectBlood:SetColor(VJ_Color2Byte(Color(130,19,10)))
		effectBlood:SetScale(120)
		util.Effect("VJ_Blood1",effectBlood)
		
		local bloodspray = EffectData()
		bloodspray:SetOrigin(self:GetPos() + self:OBBCenter())
		bloodspray:SetScale(8)
		bloodspray:SetFlags(3)
		bloodspray:SetColor(1)
		util.Effect("bloodspray",bloodspray)
		util.Effect("bloodspray",bloodspray)
	end
	
	if self:GetModel() != "models/hl1hcrab.mdl" then
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/flesh1.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/flesh2.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/flesh3.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/flesh4.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_b_bone.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,50))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_b_gib.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_guts.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,40))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_hmeat.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,45))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_lung.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,45))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_skull.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,60))})
	self:CreateGibEntity("obj_vj_gib","models/vj_hlr/gibs/hgib_legbone.mdl",{BloodDecal="VJ_HLR_Blood_Red",Pos=self:LocalToWorld(Vector(0,0,15))})
	end
	return true -- Return to true if it gibbed!
end
function ENT:CustomGibOnDeathSounds(dmginfo, hitgroup)
	VJ_EmitSound(self, "steps/bodysplat.wav", 90, 100)
	return false
end

function ENT:CustomOnDoKilledEnemy(ent, attacker, inflictor)
self:VJ_ACT_PLAYACTIVITY("ACT_DIE_CHESTSHOT", true, false, true)
 end

function ENT:CustomOnAlert(ent)
self:VJ_ACT_PLAYACTIVITY("pull_needle", true, false, true)
timer.Simple(1.5, function() if IsValid(self) then self:SetBodygroup( 2 , 1) end end)
 end
 
function ENT:CustomOnBecomeEnemyToPlayer(dmginfo, hitgroup)
self:VJ_ACT_PLAYACTIVITY("pull_needle", true, false, true)
timer.Simple(1.5, function() if IsValid(self) then self:SetBodygroup( 2 , 1) end end)
 end 
 function ENT:CustomOnMedic_OnHeal(ply) 
		ply:Kill()		
 return true
 end -- Return false to NOT update its ally's health and NOT clear its decals, allowing to custom code it
 
-- suicide code 
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo, hitgroup)
if self:Health() <= 20 then
self:AddFlags(FL_NOTARGET)
self:SetBodygroup( 2 , 2)
VJ_EmitSound(self, "scientistcla/iwoundedbad"..math.random(1, 5)..".wav", 75, 100)
self:VJ_ACT_PLAYACTIVITY("sudoku", true, false, true)
timer.Simple(2.3, function() if IsValid(self) then self:TakeDamage(self:Health(), self, self) VJ_EmitSound(self, "scientistcla/357_shot2.wav", 90, 100)
   end
  end)
 end
end