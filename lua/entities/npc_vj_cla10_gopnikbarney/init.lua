AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2021 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/cla/gopnikbarney.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 100
ENT.HullType = HULL_HUMAN
ENT.VJC_Data = {
    ThirdP_Offset = Vector(10, 0, 0), -- The offset for the controller when the camera is in third person
    FirstP_Bone = "Bip01 Head", -- If left empty, the base will attempt to calculate a position for first person
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
ENT.BecomeEnemyToPlayer = true -- Should the friendly SNPC become enemy towards the player if it's damaged by it or it witnesses another ally killed by it
ENT.BecomeEnemyToPlayerLevel = 2 -- Any time the player does something bad, the NPC's anger level raises by 1, if it surpasses this, it will become enemy!
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
ENT.MeleeAttackDamage = 15
ENT.MeleeAttackDamageType = DMG_CLUB -- Type of Damage
ENT.HasMeleeAttackKnockBack = true -- Should knockback be applied on melee hit? | Use self:MeleeAttackKnockbackVelocity() to edit the velocity
	-- ====== Animation Variables ====== --
ENT.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1} -- Melee Attack Animations
ENT.MeleeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.MeleeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the melee attack animation?
ENT.MeleeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.MeleeAttackAnimationAllowOtherTasks = false -- If set to true, the animation will not stop other tasks from playing, such as chasing | Useful for gesture attacks!
	-- ====== Distance Variables ====== --
ENT.MeleeAttackDistance = 40 -- How close does it have to be until it attacks?
ENT.MeleeAttackAngleRadius = 100 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
ENT.MeleeAttackDamageDistance = 90 -- How far does the damage go?
ENT.MeleeAttackDamageAngleRadius = 100 -- What is the damage angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
	-- ====== Timer Variables ====== --
	-- To use event-based attacks, set this to false:
ENT.TimeUntilMeleeAttackDamage = 0.5 -- This counted in seconds | This calculates the time until it hits something
ENT.NextMeleeAttackTime = 0.3 -- How much time until it can use a melee attack?
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
ENT.SCI_NextMouthMove = 0
ENT.SCI_NextMouthDistance = 0
ENT.Security_SwitchedIdle = false
ENT.Security_Type = 0
ENT.SpawnBat = true
	-- ====== Miscellaneous Variables ====== --
ENT.HideOnUnknownDamage = 5 -- number = Hide on unknown damage, defines the time until it can hide again | false = Disable this AI component
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play

ENT.SoundTbl_FootStep = {
"steps/npc_step1.wav",
"steps/npc_step2.wav",
"steps/npc_step3.wav",
"steps/npc_step4.wav"
}

ENT.SoundTbl_Pain = {
"gopnikbarney/ba_pain1.wav",
"gopnikbarney/ba_pain2.wav",
"gopnikbarney/ba_pain3.wav"
}

ENT.SoundTbl_Death = {
"gopnikbarney/ba_die1.wav",
"gopnikbarney/ba_die2.wav",
"gopnikbarney/ba_die3.wav"
}

ENT.SoundTbl_DamageByPlayer = {
"gopnikbarney/ba_whoathere.wav",
"gopnikbarney/ba_dotoyou.wav",
"gopnikbarney/ba_watchit.wav",
"gopnikbarney/ba_whatyou.wav",
"gopnikbarney/ba_friends.wav",
"gopnikbarney/ba_pissme.wav"
}
ENT.SoundTbl_MeleeAttack = {
"gopnikbarney/claw_strike1.wav",
"gopnikbarney/claw_strike2.wav",
"gopnikbarney/claw_strike3.wav"
}
ENT.SoundTbl_MeleeAttackMiss = {
"gopnikbarney/claw_miss1.wav",
"gopnikbarney/claw_miss2.wav"
}
ENT.SoundTbl_BecomeEnemyToPlayer = {
"gopnikbarney/ba_stepoff.wav",
"gopnikbarney/ba_iwish.wav",
"gopnikbarney/ba_uwish.wav",
"gopnikbarney/ba_somuch.wav",
"gopnikbarney/ba_endline.wav",
"gopnikbarney/ba_dontmake.wav",
"gopnikbarney/ba_tomb.wav"
}

ENT.SoundTbl_OnKilledEnemy = {
"gopnikbarney/ba_gotone.wav",
"gopnikbarney/ba_another.wav",
"gopnikbarney/ba_buttugly.wav",
"gopnikbarney/ba_seethat.wav",
"gopnikbarney/ba_close.wav",
"gopnikbarney/ba_firepl.wav",
"gopnikbarney/ba_bring.wav"
}

ENT.SoundTbl_Idle = {
"gopnikbarney/whatisthat.wav",
"gopnikbarney/coldone.wav",
"gopnikbarney/guyresponsible.wav",
"gopnikbarney/bigmess.wav",
"gopnikbarney/luckwillturn.wav",
"gopnikbarney/bigplace.wav",
"gopnikbarney/targetpractice.wav",
"gopnikbarney/badfeeling.wav",
"gopnikbarney/ambush.wav",
"gopnikbarney/survive.wav",
"gopnikbarney/stophere.wav"
}
ENT.SoundTbl_IdleDialogue = {
"gopnikbarney/beertopside.wav",
"gopnikbarney/wayout.wav",
"gopnikbarney/getanyworse.wav",
"gopnikbarney/gladof38.wav",
"gopnikbarney/workingonstuff.wav",
"gopnikbarney/wayout.wav",
"gopnikbarney/whatsgoingon.wav",
"gopnikbarney/aintscared.wav",
"gopnikbarney/nodrill.wav",
"gopnikbarney/gettingcloser.wav",
"gopnikbarney/youhearthat.wav",
"gopnikbarney/crewdied.wav",
"gopnikbarney/somethingmoves",
"gopnikbarney/thinking",
"gopnikbarney/missingleg"
}
ENT.SoundTbl_IdleDialogueAnswer = {
"gopnikbarney/noway.wav",
"gopnikbarney/ireckon.wav",
"gopnikbarney/soundsright.wav",
"gopnikbarney/yessir.wav",
"gopnikbarney/youbet.wav",
"gopnikbarney/yougotit.wav",
"gopnikbarney/yup.wav",
"gopnikbarney/dontaskme.wav",
"gopnikbarney/dontbet.wav",
"gopnikbarney/dontbuyit.wav",
"gopnikbarney/dontfigure.wav",
"gopnikbarney/dontguess.wav",
"gopnikbarney/hardtosay.wav",
"gopnikbarney/justdontknow.wav",
"gopnikbarney/nope.wav",
"gopnikbarney/nosir.wav",
"gopnikbarney/cantfigure.wav",
"gopnikbarney/maybe.wav",
"gopnikbarney/notelling.wav",
"gopnikbarney/bequiet.wav",
"gopnikbarney/youtalkmuch.wav",
"gopnikbarney/alreadyasked.wav"
}

ENT.SoundTbl_OnPlayerSight = {
"gopnikbarney/hellonicesuit.wav",
"gopnikbarney/howdy.wav",
"gopnikbarney/howyoudoing.wav",
"gopnikbarney/haybuddy.wav",
"gopnikbarney/hayfella.wav",
"gopnikbarney/heybuddy.wav",
"gopnikbarney/heyfella.wav"
}

ENT.SoundTbl_FollowPlayer = {
"gopnikbarney/teamup2.wav",
"gopnikbarney/dobettertogether.wav",
"gopnikbarney/imwithyou.wav",
"gopnikbarney/teamup1.wav",
"gopnikbarney/gladtolendhand.wav",
"gopnikbarney/letsgo.wav",
"gopnikbarney/letsmoveit.wav"
}

ENT.SoundTbl_UnFollowPlayer = {
"gopnikbarney/helpothers.wav",
"gopnikbarney/iwaithere.wav",
"gopnikbarney/slowingyoudown.wav",
"gopnikbarney/illwait.wav",
"gopnikbarney/seeya.wav",
"gopnikbarney/standguard.wav"
}

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
	
			-- For guarding
		if self.IsGuard == true && !IsValid(self:GetEnemy()) then
			if self.Security_SwitchedIdle == false then
				self.Security_SwitchedIdle = true
				self.AnimTbl_IdleStand = {ACT_GET_DOWN_STAND, ACT_GET_UP_STAND}
			end
		elseif self.Security_SwitchedIdle == true then
			self.Security_SwitchedIdle = false
			self.AnimTbl_IdleStand = {ACT_IDLE}
	end
end

function ENT:OnPlayCreateSound(sdData, sdFile)
	self.SCI_NextMouthMove = CurTime() + SoundDuration(sdFile)
end

function ENT:CustomOnDeath_BeforeCorpseSpawned(dmginfo,hitgroup)
	if self.SpawnBat == true then
		self:SetBodygroup(1,0)
		self:CreateGibEntity("obj_vj_gib","models/cla/chav_bat.mdl",{BloodDecal="",Pos=self:LocalToWorld(Vector(8,-8,10)),CollideSound={""}})
		self.SpawnBat = false
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo, hitgroup)
	if self.SpawnBat == true then
		self:SetBodygroup(1,0)
		self:CreateGibEntity("obj_vj_gib","models/cla/chav_bat.mdl",{BloodDecal="",Pos=self:LocalToWorld(Vector(8,-8,10)),CollideSound={""}})
		self.SpawnBat = false
	end
	if hitgroup == HITGROUP_HEAD then
		self.AnimTbl_Death = {ACT_DIE_GUTSHOT,ACT_DIE_HEADSHOT}
	else
		self.AnimTbl_Death = {ACT_DIEBACKWARD,ACT_DIEFORWARD,ACT_DIESIMPLE}
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------

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

function ENT:CustomOnAlert(ent)
self:VJ_ACT_PLAYACTIVITY("getbat", true, false, true)
timer.Simple(1.5, function() if IsValid(self) then self:SetBodygroup( 1 , 2) end end)
 end
 
function ENT:CustomOnBecomeEnemyToPlayer(dmginfo, hitgroup)
self:VJ_ACT_PLAYACTIVITY("getbat", true, false, true)
timer.Simple(1.5, function() if IsValid(self) then self:SetBodygroup( 1 , 2) end end)
 end 
---------------------------------------------------------------------------------------------------------------------------------------------