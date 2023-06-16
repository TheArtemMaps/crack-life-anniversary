AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2021 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/cla/camerasci.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
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
ENT.VJ_NPC_Class = {"CAMERA_SCIENTIST"} -- NPCs with the same class with be allied to each other
ENT.Behavior = VJ_BEHAVIOR_AGGRESSIVE
ENT.CanOpenDoors = true -- Can it open doors?
ENT.DeathAnimationTime = 3 -- Time until the SNPC spawns its corpse and gets removed
ENT.DeathCorpseApplyForce = true
ENT.DeathAnimationDecreaseLengthAmount = 1
ENT.HasGibDeathParticles = true
ENT.CustomBlood_Particle = {"vj_hlr_blood_red"}
ENT.CustomBlood_Decal = {"VJ_HLR_Blood_Red"} -- Decals to spawn when it's damaged
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {ACT_DIEBACKWARD,ACT_DIEFORWARD,ACT_DIESIMPLE} -- Death Animations
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
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------ Melee Attack Variables ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = 1
ENT.MeleeAttackDamageType = DMG_BURN -- Type of Damage
ENT.HasMeleeAttackKnockBack = false -- Should knockback be applied on melee hit? | Use self:MeleeAttackKnockbackVelocity() to edit the velocity
	-- ====== Animation Variables ====== --
ENT.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1} -- Melee Attack Animations
ENT.MeleeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.MeleeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the melee attack animation?
ENT.MeleeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.MeleeAttackAnimationAllowOtherTasks = false -- If set to true, the animation will not stop other tasks from playing, such as chasing | Useful for gesture attacks!
	-- ====== Distance Variables ====== --
ENT.MeleeAttackDistance = 100 -- How close does it have to be until it attacks?
ENT.MeleeAttackAngleRadius = 100 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
ENT.MeleeAttackDamageDistance = 180 -- How far does the damage go?
ENT.MeleeAttackDamageAngleRadius = 100 -- What is the damage angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
	-- ====== Timer Variables ====== --
	-- To use event-based attacks, set this to false:
ENT.TimeUntilMeleeAttackDamage = 1.5 -- This counted in seconds | This calculates the time until it hits something
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
ENT.SoundTbl_FootStep = {
"steps/npc_step1.wav",
"steps/npc_step2.wav",
"steps/npc_step3.wav",
"steps/npc_step4.wav"
}

ENT.SoundTbl_BeforeMeleeAttack = {
"scientistcla/cringe1.wav",
"scientistcla/cringe2.wav",
"scientistcla/cringe3.wav",
"scientistcla/cringe4.wav",
"scientistcla/cringe5.wav",
"scientistcla/cringe6.wav",
"scientistcla/cringe7.wav"
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
"scientistcla/batka.wav"
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
"scientistcla/thatsgay.wav"
}

ENT.SoundTbl_Investigate = {"scientistcla/whatissound.wav","scientistcla/overhere.wav","scientistcla/lowervoice.wav","scientistcla/ihearsomething.wav","scientistcla/hello2.wav","scientistcla/hearsomething.wav","scientistcla/didyouhear.wav","scientistcla/d01_sci10_interesting.wav","scientistcla/c3a2_sci_1glu.wav", "scientistcla/c1a0_sci_lock1a.wav"}

ENT.SoundTbl_MeleeAttack = {
"scientistcla/camerasnap.wav"
}
ENT.SoundTbl_Pain = {"scientistcla/sci_pain1.wav","scientistcla/sci_pain2.wav","scientistcla/sci_pain3.wav","scientistcla/sci_pain4.wav","scientistcla/sci_pain5.wav","scientistcla/sci_pain6.wav","scientistcla/sci_pain7.wav","scientistcla/sci_pain8.wav","scientistcla/sci_pain9.wav","scientistcla/sci_pain10.wav"}
ENT.SoundTbl_Death = {"scientistcla/scream5.wav","scientistcla/scream21.wav","scientistcla/sci_die1.wav","scientistcla/sci_die2.wav","scientistcla/sci_die3.wav","scientistcla/sci_die4.wav","scientistcla/sci_dragoff.wav"}

ENT.GeneralSoundPitch1 = 100
---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
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
---------------------------------------------------------------------------------------------------------------------------------------------
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
 function ENT:Controller_IntMsg(ply, controlEnt)
	ply:ChatPrint("Left Mouse Button: take a picture")
end
function ENT:CustomOnMeleeAttack_AfterChecks(hitEnt, isProp)
	local effectdata = EffectData()
	effectdata:SetOrigin( self:GetPos() )
	util.Effect( "camera_flash", effectdata )
return false	
 end

---------------------------------------------------------------------------------------------------------------------------------------------