-- Author: Yugen
--
-- Battle for Azeroth
--
-- Hope you like my addOn ^^
--
-- Dark Minimalist UI for World of Warcraft
--------------------------------------------------------------------------------
-- DarkerUI Core--
--------------------------------------------------------------
local BasicFrames = CreateFrame("Frame")
BasicFrames:RegisterEvent("ADDON_LOADED")
BasicFrames:SetScript("OnEvent", function(self, event, addon)
	if (addon == "AbyssUI") then
		for i, v in pairs({	PlayerFrameTexture,
			TargetFrameTextureFrameTexture,
			PetFrameTexture,
			PartyMemberFrame1Texture,
			PartyMemberFrame2Texture,
			PartyMemberFrame3Texture,
			PartyMemberFrame4Texture,
			PartyMemberFrame1PetFrameTexture,
			PartyMemberFrame2PetFrameTexture,
			PartyMemberFrame3PetFrameTexture,
			PartyMemberFrame4PetFrameTexture,
			FocusFrameTextureFrameTexture,
			TargetFrameToTTextureFrameTexture,
			FocusFrameToTTextureFrameTexture,
			BonusActionBarFrameTexture0,
			BonusActionBarFrameTexture1,
			BonusActionBarFrameTexture2,
			BonusActionBarFrameTexture3,
			BonusActionBarFrameTexture4,
			MainMenuBarTexture0,
			MainMenuBarTexture1,
			MainMenuBarTexture2,
			MainMenuBarTexture3,
			MainMenuMaxLevelBar0,
			MainMenuMaxLevelBar1,
			MainMenuMaxLevelBar2,
			MainMenuMaxLevelBar3,
			MinimapBorder,
			CastingBarFrameBorder,
			FocusFrameSpellBarBorder,
			TargetFrameSpellBarBorder,
			MiniMapTrackingButtonBorder,
			MiniMapLFGFrameBorder,
			MiniMapBattlefieldBorder,
			MiniMapMailBorder, }) do
			MiniMapWorldMapButton:SetAlpha(0.3)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)	
				else
					v:SetVertexColor(.5, .5, .5)
				end
			else
				return nil
			end
		end
		self:UnregisterEvent("ADDON_LOADED")
		BasicFrames:SetScript("OnEvent", nil)
	end
end)

-- Dark Unit Frames Exception
local DarkException = CreateFrame("Frame")
DarkException:RegisterEvent("ADDON_LOADED")
DarkException:SetScript("OnEvent", function(self, event, addon)
	if (addon == "AbyssUI") then
		for i, v in pairs({
			PlayerFrameTexture,
			TargetFrameTextureFrameTexture,
			PetFrameTexture,
			PartyMemberFrame1Texture,
			PartyMemberFrame2Texture,
			PartyMemberFrame3Texture,
			PartyMemberFrame4Texture,
			PartyMemberFrame1PetFrameTexture,
			PartyMemberFrame2PetFrameTexture,
			PartyMemberFrame3PetFrameTexture,
			PartyMemberFrame4PetFrameTexture,
			FocusFrameTextureFrameTexture,
			TargetFrameToTTextureFrameTexture,
			FocusFrameToTTextureFrameTexture,
			MinimapBorder,
			MiniMapTrackingButtonBorder,
			MiniMapLFGFrameBorder,
			MiniMapBattlefieldBorder,
			MiniMapMailBorder,
			MiniMapBorderTop, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.KeepUnitDark == true then
					v:SetVertexColor(.4, .4, .4)
				elseif AbyssUIAddonSettings.KeepUnitBlizzard == true then
					v:SetVertexColor(1, 1, 1)
				else
					return nil
				end
			end
		end
	self:UnregisterEvent("ADDON_LOADED")
	DarkException:SetScript("OnEvent", nil)
	end
end)
------------------------- New Darker Parts -------------------------
-- Parts that need to be dark (keep aesthetic)
--[[ Old
local NewPartsDark = CreateFrame("Frame")
NewPartsDark:RegisterEvent("ADDON_LOADED")
NewPartsDark:SetScript("OnEvent", function(self, event, addon)
	if (addon == "AbyssUI") then
		for i, v in pairs({ 
			LFGDungeonReadyDialog.Border.TopEdge,
			LFGDungeonReadyDialog.Border.RightEdge,
			LFGDungeonReadyDialog.Border.BottomEdge,
			LFGDungeonReadyDialog.Border.LeftEdge,
			LFGDungeonReadyDialog.Border.TopRightCorner,
			LFGDungeonReadyDialog.Border.TopLeftCorner,
			LFGDungeonReadyDialog.Border.BottomLeftCorner,
			LFGDungeonReadyDialog.Border.BottomRightCorner,
			LFGDungeonReadyStatus.Border.TopEdge,
			LFGDungeonReadyStatus.Border.RightEdge,
			LFGDungeonReadyStatus.Border.BottomEdge,
			LFGDungeonReadyStatus.Border.LeftEdge,
			LFGDungeonReadyStatus.Border.TopRightCorner,
			LFGDungeonReadyStatus.Border.TopLeftCorner,
			LFGDungeonReadyStatus.Border.BottomLeftCorner,
			LFGDungeonReadyStatus.Border.BottomRightCorner,
			InterfaceOptionsFrame.Border.TopEdge,
			InterfaceOptionsFrame.Border.RightEdge,
			InterfaceOptionsFrame.Border.BottomEdge,
			InterfaceOptionsFrame.Border.LeftEdge,
			InterfaceOptionsFrame.Border.TopRightCorner,
			InterfaceOptionsFrame.Border.TopLeftCorner,
			InterfaceOptionsFrame.Border.BottomLeftCorner,
			InterfaceOptionsFrame.Border.BottomRightCorner,
			VideoOptionsFrame.Border.TopEdge,
			VideoOptionsFrame.Border.RightEdge,
			VideoOptionsFrame.Border.BottomEdge,
			VideoOptionsFrame.Border.LeftEdge,
			VideoOptionsFrame.Border.TopRightCorner,
			VideoOptionsFrame.Border.TopLeftCorner,
			VideoOptionsFrame.Border.BottomLeftCorner,
			VideoOptionsFrame.Border.BottomRightCorner,
			AddonList.NineSlice.TopEdge,
			AddonList.NineSlice.RightEdge,
			AddonList.NineSlice.BottomEdge,
			AddonList.NineSlice.LeftEdge,
			AddonList.NineSlice.TopRightCorner,
			AddonList.NineSlice.TopLeftCorner,
			AddonList.NineSlice.BottomLeftCorner,
			AddonList.NineSlice.BottomRightCorner,
			GameMenuFrame.Border.TopEdge,
			GameMenuFrame.Border.RightEdge,
			GameMenuFrame.Border.BottomEdge,
			GameMenuFrame.Border.LeftEdge,
			GameMenuFrame.Border.TopRightCorner,
			GameMenuFrame.Border.TopLeftCorner,
			GameMenuFrame.Border.BottomLeftCorner,
			GameMenuFrame.Border.BottomRightCorner,
			StaticPopup1.Border.TopEdge,
			StaticPopup1.Border.RightEdge,
			StaticPopup1.Border.BottomEdge,
			StaticPopup1.Border.LeftEdge,
			StaticPopup1.Border.TopRightCorner,
			StaticPopup1.Border.TopLeftCorner,
			StaticPopup1.Border.BottomLeftCorner,
			StaticPopup1.Border.BottomRightCorner,
			PVPReadyDialog.Border.TopEdge,
			PVPReadyDialog.Border.RightEdge,
			PVPReadyDialog.Border.BottomEdge,
			PVPReadyDialog.Border.LeftEdge,
			PVPReadyDialog.Border.TopRightCorner,
			PVPReadyDialog.Border.TopLeftCorner,
			PVPReadyDialog.Border.BottomLeftCorner,
			PVPReadyDialog.Border.BottomRightCorner,
			DropDownList1Backdrop.TopEdge,
			DropDownList1Backdrop.RightEdge,
			DropDownList1Backdrop.BottomEdge,
			DropDownList1Backdrop.LeftEdge,
			DropDownList1Backdrop.TopRightCorner,
			DropDownList1Backdrop.TopLeftCorner,
			DropDownList1Backdrop.BottomLeftCorner,
			DropDownList1Backdrop.BottomRightCorner,
			RecruitAFriendRewardsFrame.Border.TopEdge,
			RecruitAFriendRewardsFrame.Border.RightEdge,
			RecruitAFriendRewardsFrame.Border.BottomEdge,
			RecruitAFriendRewardsFrame.Border.LeftEdge,
			RecruitAFriendRewardsFrame.Border.TopRightCorner,
			RecruitAFriendRewardsFrame.Border.TopLeftCorner,
			RecruitAFriendRewardsFrame.Border.BottomLeftCorner,
			RecruitAFriendRewardsFrame.Border.BottomRightCorner,
			RecruitAFriendRecruitmentFrame.Border.TopEdge,
			RecruitAFriendRecruitmentFrame.Border.RightEdge,
			RecruitAFriendRecruitmentFrame.Border.BottomEdge,
			RecruitAFriendRecruitmentFrame.Border.LeftEdge,
			RecruitAFriendRecruitmentFrame.Border.TopRightCorner,
			RecruitAFriendRecruitmentFrame.Border.TopLeftCorner,
			RecruitAFriendRecruitmentFrame.Border.BottomLeftCorner,
			RecruitAFriendRecruitmentFrame.Border.BottomRightCorner,
			PetBattleQueueReadyFrame.Border.TopEdge,
			PetBattleQueueReadyFrame.Border.RightEdge,
			PetBattleQueueReadyFrame.Border.BottomEdge,
			PetBattleQueueReadyFrame.Border.LeftEdge,
			PetBattleQueueReadyFrame.Border.TopRightCorner,
			PetBattleQueueReadyFrame.Border.TopLeftCorner,
			PetBattleQueueReadyFrame.Border.BottomLeftCorner,
			PetBattleQueueReadyFrame.Border.BottomRightCorner, }) do
			AddonListInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			AddonListInset.NineSlice.BottomRightCorner:SetAlpha(0)
			PaperDollInnerBorderBottom:SetAlpha(0)
			PaperDollInnerBorderLeft:SetAlpha(0)
			PaperDollInnerBorderRight:SetAlpha(0)
			PaperDollInnerBorderTop:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				v:SetVertexColor(.4, .4, .4)
			else 
				return nil
			end
		end	
		-- End
		self:UnregisterEvent("ADDON_LOADED")
		NewPartsDark:SetScript("OnEvent", nil)
	end
end)
--]]
local SetAlphaFrames = CreateFrame("Frame")
SetAlphaFrames:RegisterEvent("ADDON_LOADED")
SetAlphaFrames:SetScript("OnEvent", function(self, event, addon)
	if (addon == "AbyssUI") then
		AddonListInset.NineSlice.BottomLeftCorner:SetAlpha(0)
		AddonListInset.NineSlice.BottomRightCorner:SetAlpha(0)
		PaperDollInnerBorderBottom:SetAlpha(0)
		PaperDollInnerBorderBottom2:SetAlpha(0)
		PaperDollInnerBorderLeft:SetAlpha(0)
		PaperDollInnerBorderRight:SetAlpha(0)
		PaperDollInnerBorderTop:SetAlpha(0)
		-- End
		self:UnregisterEvent("ADDON_LOADED")
		SetAlphaFrames:SetScript("OnEvent", nil)
	end
end)
-- New Interface Action Bar
local NewFrames = CreateFrame("Frame")
NewFrames:RegisterEvent("ADDON_LOADED")
NewFrames:SetScript("OnEvent", function(self, event, addon)
	if (addon == "AbyssUI") then
		for i, v in pairs({ MainMenuBarArtFrame.LeftEndCap,
			MainMenuBarArtFrame.RightEndCap,
			MainMenuBarArtFrameBackground.BackgroundSmall,
			MainMenuBarArtFrameBackground.BackgroundLarge, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.5, .5, .5)
				end
			else
				return nil
			end
		end
		-- Character
		for i, v in pairs({	CharacterFrame.NineSlice.RightEdge,
			CharacterFrame.NineSlice.LeftEdge,
			CharacterFrame.NineSlice.TopEdge,
			CharacterFrame.NineSlice.BottomEdge,
			CharacterFrame.NineSlice.PortraitFrame,
			CharacterFrame.NineSlice.TopRightCorner,
			CharacterFrame.NineSlice.TopLeftCorner,
			CharacterFrame.NineSlice.BottomLeftCorner,
			CharacterFrame.NineSlice.BottomRightCorner,
			TokenFramePopup.Border.TopEdge,
			TokenFramePopup.Border.RightEdge,
			TokenFramePopup.Border.BottomEdge,
			TokenFramePopup.Border.LeftEdge,
			TokenFramePopup.Border.TopRightCorner,
			TokenFramePopup.Border.TopLeftCorner,
			TokenFramePopup.Border.BottomLeftCorner,
			TokenFramePopup.Border.BottomRightCorner,
			ReputationDetailFrame.Border.TopEdge,
			ReputationDetailFrame.Border.RightEdge,
			ReputationDetailFrame.Border.BottomEdge,
			ReputationDetailFrame.Border.LeftEdge,
			ReputationDetailFrame.Border.TopRightCorner,
			ReputationDetailFrame.Border.TopLeftCorner,
			ReputationDetailFrame.Border.BottomLeftCorner,
			ReputationDetailFrame.Border.BottomRightCorner, }) do
			CharacterFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			CharacterFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			CharacterFrameInsetRight.NineSlice.BottomLeftCorner:SetAlpha(0)
			CharacterFrameInsetRight.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- SpellBook
		for i, v in pairs({ SpellBookFrame.NineSlice.TopEdge,
			SpellBookFrame.NineSlice.RightEdge,
			SpellBookFrame.NineSlice.LeftEdge,
			SpellBookFrame.NineSlice.TopEdge,
			SpellBookFrame.NineSlice.BottomEdge,
			SpellBookFrame.NineSlice.PortraitFrame,
			SpellBookFrame.NineSlice.TopRightCorner,
			SpellBookFrame.NineSlice.TopLeftCorner,
			SpellBookFrame.NineSlice.BottomLeftCorner,
			SpellBookFrame.NineSlice.BottomRightCorner,
		 	SpellBookFrameInset.NineSlice.BottomEdge, }) do
			SpellBookFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			SpellBookFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- PvE/Pvp
		for i, v in pairs({ PVEFrame.NineSlice.TopEdge,
			PVEFrame.NineSlice.TopRightCorner,
			PVEFrame.NineSlice.RightEdge,
			PVEFrame.NineSlice.BottomRightCorner,
			PVEFrame.NineSlice.BottomEdge,
			PVEFrame.NineSlice.BottomLeftCorner,
			PVEFrame.NineSlice.LeftEdge,
			PVEFrame.NineSlice.TopLeftCorner, }) do
			PVEFrameLeftInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			PVEFrameLeftInset.NineSlice.BottomRightCorner:SetAlpha(0)
			LFDParentFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			LFDParentFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Friends
		for i, v in pairs({ FriendsFrame.NineSlice.TopEdge,
			FriendsFrame.NineSlice.TopEdge,
			FriendsFrame.NineSlice.TopRightCorner,
			FriendsFrame.NineSlice.RightEdge,
			FriendsFrame.NineSlice.BottomRightCorner,
			FriendsFrame.NineSlice.BottomEdge,
			FriendsFrame.NineSlice.BottomLeftCorner,
			FriendsFrame.NineSlice.LeftEdge,
			FriendsFrame.NineSlice.TopLeftCorner,
			FriendsFrameInset.NineSlice.BottomEdge,
			FriendsFriendsFrame.Border.TopEdge,
			FriendsFriendsFrame.Border.RightEdge,
			FriendsFriendsFrame.Border.BottomEdge,
			FriendsFriendsFrame.Border.LeftEdge,
			FriendsFriendsFrame.Border.TopRightCorner,
			FriendsFriendsFrame.Border.TopLeftCorner,
			FriendsFriendsFrame.Border.BottomLeftCorner,
			FriendsFriendsFrame.Border.BottomRightCorner, }) do
			FriendsFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			FriendsFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			WhoFrameListInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			WhoFrameListInset.NineSlice.BottomRightCorner:SetAlpha(0)
			WhoFrameEditBoxInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			WhoFrameEditBoxInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Map
		for i, v in pairs({ WorldMapFrame.BorderFrame.NineSlice.TopEdge,
			WorldMapFrame.BorderFrame.NineSlice.TopEdge,
			WorldMapFrame.BorderFrame.NineSlice.TopEdge,
			WorldMapFrame.BorderFrame.NineSlice.TopRightCorner,
			WorldMapFrame.BorderFrame.NineSlice.RightEdge,
			WorldMapFrame.BorderFrame.NineSlice.BottomRightCorner,
			WorldMapFrame.BorderFrame.NineSlice.BottomEdge,
			WorldMapFrame.BorderFrame.NineSlice.BottomLeftCorner,
			WorldMapFrame.BorderFrame.NineSlice.LeftEdge,
			WorldMapFrame.BorderFrame.NineSlice.TopLeftCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Channels
		for i, v in pairs({ ChannelFrame.NineSlice.TopEdge,
			ChannelFrame.NineSlice.TopEdge,
			ChannelFrame.NineSlice.TopRightCorner,
			ChannelFrame.NineSlice.RightEdge,
			ChannelFrame.NineSlice.BottomRightCorner,
			ChannelFrame.NineSlice.BottomEdge,
			ChannelFrame.NineSlice.BottomLeftCorner,
			ChannelFrame.NineSlice.LeftEdge,
			ChannelFrame.NineSlice.TopLeftCorner,
			ChannelFrame.LeftInset.NineSlice.BottomEdge,
			ChannelFrame.LeftInset.NineSlice.BottomLeftCorner,
			ChannelFrame.LeftInset.NineSlice.BottomRightCorner,
			ChannelFrame.RightInset.NineSlice.BottomEdge,
			ChannelFrame.RightInset.NineSlice.BottomLeftCorner,
			ChannelFrame.RightInset.NineSlice.BottomRightCorner,
			ChannelFrameInset.NineSlice.BottomEdge, }) do
			ChannelFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			ChannelFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Chat
		for i, v in pairs({ ChatFrame1EditBoxLeft,
			ChatFrame1EditBoxRight,
			ChatFrame1EditBoxMid,
			ChatFrame2EditBoxLeft,
			ChatFrame2EditBoxRight,
			ChatFrame2EditBoxMid,
			ChatFrame3EditBoxLeft,
			ChatFrame3EditBoxRight,
			ChatFrame3EditBoxMid,
			ChatFrame4EditBoxLeft,
			ChatFrame4EditBoxRight,
			ChatFrame4EditBoxMid,
			ChatFrame5EditBoxLeft,
			ChatFrame5EditBoxRight,
			ChatFrame5EditBoxMid,
			ChatFrame6EditBoxLeft,
			ChatFrame6EditBoxRight,
			ChatFrame6EditBoxMid,
			ChatFrame7EditBoxLeft,
			ChatFrame7EditBoxRight,
			ChatFrame7EditBoxMid,	}) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- StatusBar (ExpBar)
		for i, v in pairs({ StatusTrackingBarManager.SingleBarLarge,
			StatusTrackingBarManager.SingleBarSmall,
			StatusTrackingBarManager.SingleBarLargeUpper,
			StatusTrackingBarManager.SingleBarSmallUpper,	}) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Mail
		for i, v in pairs({ MailFrame.NineSlice.TopEdge,
			MailFrame.NineSlice.TopRightCorner,
			MailFrame.NineSlice.RightEdge,
			MailFrame.NineSlice.BottomRightCorner,
			MailFrame.NineSlice.BottomEdge,
			MailFrame.NineSlice.BottomLeftCorner,
			MailFrame.NineSlice.LeftEdge,
			MailFrame.NineSlice.TopLeftCorner,
			MailFrameInset.NineSlice.BottomEdge, }) do
			MailFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			MailFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			SendMailMoneyInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			SendMailMoneyInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Merchant
		for i, v in pairs({ MerchantFrame.NineSlice.TopEdge,
			MerchantFrame.NineSlice.RightEdge,
			MerchantFrame.NineSlice.BottomEdge,
			MerchantFrame.NineSlice.LeftEdge,
			MerchantFrame.NineSlice.TopRightCorner,
			MerchantFrame.NineSlice.TopLeftCorner,
			MerchantFrame.NineSlice.BottomLeftCorner,
			MerchantFrame.NineSlice.BottomRightCorner,
			StackSplitFrame.SingleItemSplitBackground, }) do
			MerchantMoneyInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			MerchantMoneyInset.NineSlice.BottomRightCorner:SetAlpha(0)
			MerchantExtraCurrencyInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			MerchantExtraCurrencyInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Gossip (e.g NPC dialog frame and interactions)
		for i, v in pairs({ GossipFrame.NineSlice.TopEdge,
			GossipFrame.NineSlice.RightEdge,
			GossipFrame.NineSlice.BottomEdge,
			GossipFrame.NineSlice.LeftEdge,
			GossipFrame.NineSlice.TopRightCorner,
			GossipFrame.NineSlice.TopLeftCorner,
			GossipFrame.NineSlice.BottomLeftCorner,
			GossipFrame.NineSlice.BottomRightCorner,
		 	GossipFrameInset.NineSlice.BottomEdge, }) do
			GossipFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			GossipFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Bank
		for i, v in pairs({ BankFrame.NineSlice.TopEdge,
			BankFrame.NineSlice.RightEdge,
			BankFrame.NineSlice.BottomEdge,
			BankFrame.NineSlice.LeftEdge,
			BankFrame.NineSlice.TopRightCorner,
			BankFrame.NineSlice.TopLeftCorner,
			BankFrame.NineSlice.BottomLeftCorner,
			BankFrame.NineSlice.BottomRightCorner,	}) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Quest
		for i, v in pairs({ QuestFrame.NineSlice.TopEdge,
			QuestFrame.NineSlice.RightEdge,
			QuestFrame.NineSlice.BottomEdge,
			QuestFrame.NineSlice.LeftEdge,
			QuestFrame.NineSlice.TopRightCorner,
			QuestFrame.NineSlice.TopLeftCorner,
			QuestFrame.NineSlice.BottomLeftCorner,
			QuestFrame.NineSlice.BottomRightCorner,
			QuestFrameInset.NineSlice.BottomEdge,
			QuestLogPopupDetailFrame.NineSlice.TopEdge,
			QuestLogPopupDetailFrame.NineSlice.RightEdge,
			QuestLogPopupDetailFrame.NineSlice.BottomEdge,
			QuestLogPopupDetailFrame.NineSlice.LeftEdge,
			QuestLogPopupDetailFrame.NineSlice.TopRightCorner,
			QuestLogPopupDetailFrame.NineSlice.TopLeftCorner,
			QuestLogPopupDetailFrame.NineSlice.BottomLeftCorner,
			QuestLogPopupDetailFrame.NineSlice.BottomRightCorner,
			QuestLogPopupDetailFrame.NineSlice.BottomEdge,
			QuestNPCModelTopBorder,
			QuestNPCModelRightBorder,
			QuestNPCModelTopRightCorner,
			QuestNPCModelBottomRightCorner,
			QuestNPCModelBottomBorder,
			QuestNPCModelBottomLeftCorner,
			QuestNPCModelLeftBorder,
			QuestNPCModelTopLeftCorner,
			QuestNPCModelTextTopBorder,
			QuestNPCModelTextRightBorder,
			QuestNPCModelTextTopRightCorner,
			QuestNPCModelTextBottomRightCorner,
			QuestNPCModelTextBottomBorder,
			QuestNPCModelTextBottomLeftCorner,
			QuestNPCModelTextLeftBorder,
			QuestNPCModelTextTopLeftCorner, }) do
			QuestFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			QuestFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Micro Menu and Bag Bar
		for i, v in pairs({ MicroButtonAndBagsBar.MicroBagBar, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- StanceBar
		for i, v in pairs({ StanceBarLeft,
			StanceBarMiddle,
			StanceBarRight, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- DressUP
		for i, v in pairs({ DressUpFrame.NineSlice.TopEdge,
			DressUpFrame.NineSlice.RightEdge,
			DressUpFrame.NineSlice.BottomEdge,
			DressUpFrame.NineSlice.LeftEdge,
			DressUpFrame.NineSlice.TopRightCorner,
			DressUpFrame.NineSlice.TopLeftCorner,
			DressUpFrame.NineSlice.BottomLeftCorner,
			DressUpFrame.NineSlice.BottomRightCorner,
			DressUpFrameInset.NineSlice.BottomEdge, }) do
			DressUpFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			DressUpFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			DressUpFrame.MaximizeMinimizeFrame:SetAlpha(0.3)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- LootFrame
		for i, v in pairs({ LootFrame.NineSlice.TopEdge,
			LootFrame.NineSlice.RightEdge,
			LootFrame.NineSlice.BottomEdge,
			LootFrame.NineSlice.LeftEdge,
			LootFrame.NineSlice.TopRightCorner,
			LootFrame.NineSlice.TopLeftCorner,
			LootFrame.NineSlice.BottomLeftCorner,
			LootFrame.NineSlice.BottomRightCorner, }) do
			LootFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			LootFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- HelpFrame
		for i, v in pairs({ HelpFrameTopBorder,
			HelpFrameRightBorder,
			HelpFrameTopRightCorner,
			HelpFrameBottomRightCorner,
			HelpFrameBottomBorder,
			HelpFrameBottomLeftCorner,
			HelpFrameLeftBorder,
			HelpFrameTopLeftCorner,
		 	HelpFrameVertDivTop,
			HelpFrameVertDivMiddle,
			HelpFrameVertDivBottom,
			HelpFrameHeaderTopBorder,
			HelpFrameHeaderTopRightCorner,
			HelpFrameHeaderRightBorder,
			HelpFrameHeaderBottomRightCorner,
			HelpFrameHeaderBottomBorder,
			HelpFrameHeaderBottomLeftCorner,
			HelpFrameHeaderLeftBorder,
			HelpFrameHeaderTopLeftCorner,
			HelpFrameLeftInset.NineSlice.LeftEdge,
		 	HelpFrameLeftInset.NineSlice.BottomEdge,
			HelpBrowser.BrowserInset.NineSlice.BottomEdge,
			HelpFrameMainInset.NineSlice.BottomEdge, }) do
			HelpFrameLeftInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			HelpFrameLeftInset.NineSlice.BottomRightCorner:SetAlpha(0)
			HelpFrameMainInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			HelpFrameMainInset.NineSlice.BottomRightCorner:SetAlpha(0) 
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- ItemTextFrame
		for i, v in pairs({	ItemTextFrame.NineSlice.TopEdge,
			ItemTextFrame.NineSlice.RightEdge,
			ItemTextFrame.NineSlice.BottomEdge,
			ItemTextFrame.NineSlice.LeftEdge,
			ItemTextFrame.NineSlice.TopRightCorner,
			ItemTextFrame.NineSlice.TopLeftCorner,
			ItemTextFrame.NineSlice.BottomLeftCorner,
			ItemTextFrame.NineSlice.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- PetitionFrame
		for i, v in pairs({	PetitionFrame.NineSlice.TopEdge,
			PetitionFrame.NineSlice.RightEdge,
			PetitionFrame.NineSlice.BottomEdge,
			PetitionFrame.NineSlice.LeftEdge,
			PetitionFrame.NineSlice.TopRightCorner,
			PetitionFrame.NineSlice.TopLeftCorner,
			PetitionFrame.NineSlice.BottomLeftCorner,
			PetitionFrame.NineSlice.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
		-- Guild Register Frame (pt?) & Tabard Frame
		for i, v in pairs({	GuildRegistrarFrame.NineSlice.TopEdge,
			GuildRegistrarFrame.NineSlice.RightEdge,
			GuildRegistrarFrame.NineSlice.BottomEdge,
			GuildRegistrarFrame.NineSlice.LeftEdge,
			GuildRegistrarFrame.NineSlice.TopRightCorner,
			GuildRegistrarFrame.NineSlice.TopLeftCorner,
			GuildRegistrarFrame.NineSlice.BottomLeftCorner,
			GuildRegistrarFrame.NineSlice.BottomRightCorner,
			TabardFrame.NineSlice.TopEdge,
			TabardFrame.NineSlice.RightEdge,
			TabardFrame.NineSlice.BottomEdge,
			TabardFrame.NineSlice.LeftEdge,
			TabardFrame.NineSlice.TopRightCorner,
			TabardFrame.NineSlice.TopLeftCorner,
			TabardFrame.NineSlice.BottomLeftCorner,
			TabardFrame.NineSlice.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end	
		-- End
		self:UnregisterEvent("ADDON_LOADED")
		NewFrames:SetScript("OnEvent", nil)
	end
end)
-------------- Frames that need a load to work properly --------------
-- Specialization
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
		if name == "Blizzard_TalentUI" then
			for i, v in pairs({ PlayerTalentFrame.NineSlice.TopEdge,
				PlayerTalentFrame.NineSlice.RightEdge,
				PlayerTalentFrame.NineSlice.BottomEdge,
				PlayerTalentFrame.NineSlice.LeftEdge,
				PlayerTalentFrame.NineSlice.TopRightCorner,
				PlayerTalentFrame.NineSlice.TopLeftCorner,
				PlayerTalentFrame.NineSlice.BottomLeftCorner,
				PlayerTalentFrame.NineSlice.BottomRightCorner,
				PlayerTalentFrameInset.NineSlice.BottomEdge, }) do
				PlayerTalentFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
				PlayerTalentFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
				if AbyssUIAddonSettings ~= nil then
					if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
						v:SetVertexColor(1, 1, 1)
					elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
						v:SetVertexColor(.2, .2, .2)
					elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
						v:SetVertexColor(182/255, 42/255, 37/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
						v:SetVertexColor(236/255, 193/255, 60/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
						v:SetVertexColor(196/255, 31/255, 59/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
						v:SetVertexColor(163/255, 48/255, 201/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
						v:SetVertexColor(252/255, 163/255, 85/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
						v:SetVertexColor(190/255, 221/255, 115/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
						v:SetVertexColor(64/255, 220/255, 255/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
						v:SetVertexColor(86/255, 255/255, 184/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
						v:SetVertexColor(255/255, 155/255, 195/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
						v:SetVertexColor(23/255, 28/255, 99/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
						v:SetVertexColor(255/255, 255/255, 0/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
						v:SetVertexColor(0/255, 112/255, 222/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
						v:SetVertexColor(135/255, 135/255, 237/255)
					elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
						v:SetVertexColor(199/255, 156/255, 110/255)
					elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
					else
						v:SetVertexColor(.4, .4, .4)
					end
				else
					return nil
				end
			end
		end
end)
-- Collections
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_Collections" then
		for i, v in pairs({ CollectionsJournal.NineSlice.TopEdge,
			CollectionsJournal.NineSlice.TopRightCorner,
			CollectionsJournal.NineSlice.RightEdge,
			CollectionsJournal.NineSlice.BottomRightCorner,
			CollectionsJournal.NineSlice.BottomEdge,
			CollectionsJournal.NineSlice.BottomLeftCorner,
			CollectionsJournal.NineSlice.LeftEdge,
			CollectionsJournal.NineSlice.TopLeftCorner,
			MountJournal.RightInset.NineSlice.BottomEdge,
			MountJournal.LeftInset.NineSlice.BottomEdge,
			MountJournal.BottomLeftInset.NineSlice.BottomRightCorner,
			PetJournalRightInset.NineSlice.BottomEdge,
			PetJournalLeftInset.NineSlice.BottomEdge, }) do
			MountJournal.LeftInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			MountJournal.LeftInset.NineSlice.BottomRightCorner:SetAlpha(0)
			MountJournal.RightInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			MountJournal.RightInset.NineSlice.BottomRightCorner:SetAlpha(0)
			MountJournal.BottomLeftInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			MountJournal.BottomLeftInset.NineSlice.BottomRightCorner:SetAlpha(0)
			PetJournalRightInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			PetJournalRightInset.NineSlice.BottomRightCorner:SetAlpha(0)
			PetJournalLeftInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			PetJournalLeftInset.NineSlice.BottomRightCorner:SetAlpha(0)
			ToyBox.iconsFrame.NineSlice.BottomLeftCorner:SetAlpha(0)
			ToyBox.iconsFrame.NineSlice.BottomRightCorner:SetAlpha(0)
			HeirloomsJournal.iconsFrame.NineSlice.BottomLeftCorner:SetAlpha(0)
			HeirloomsJournal.iconsFrame.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- AdventureGuide
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_EncounterJournal" then
		for i, v in pairs({ EncounterJournal.NineSlice.TopEdge,
			EncounterJournal.NineSlice.RightEdge,
			EncounterJournal.NineSlice.BottomEdge,
			EncounterJournal.NineSlice.LeftEdge,
			EncounterJournal.NineSlice.TopRightCorner,
			EncounterJournal.NineSlice.TopLeftCorner,
			EncounterJournal.NineSlice.BottomLeftCorner,
			EncounterJournal.NineSlice.BottomRightCorner,
			EncounterJournalInset.NineSlice.BottomEdge, }) do
			EncounterJournalInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			EncounterJournalInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- Communities
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_Communities" then
		for i, v in pairs({ CommunitiesFrame.NineSlice.TopEdge,
			CommunitiesFrame.NineSlice.RightEdge,
			CommunitiesFrame.NineSlice.BottomEdge,
			CommunitiesFrame.NineSlice.LeftEdge,
			CommunitiesFrame.NineSlice.TopRightCorner,
			CommunitiesFrame.NineSlice.TopLeftCorner,
			CommunitiesFrame.NineSlice.BottomLeftCorner,
			CommunitiesFrame.NineSlice.BottomRightCorner,
			CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.BottomEdge,
			CommunitiesFrame.GuildFinderFrame.InsetFrame.NineSlice.BottomEdge,
			CommunitiesFrame.GuildMemberDetailFrame.Border.TopEdge,
			CommunitiesFrame.GuildMemberDetailFrame.Border.RightEdge,
			CommunitiesFrame.GuildMemberDetailFrame.Border.BottomEdge,
			CommunitiesFrame.GuildMemberDetailFrame.Border.LeftEdge,
			CommunitiesFrame.GuildMemberDetailFrame.Border.TopRightCorner,
			CommunitiesFrame.GuildMemberDetailFrame.Border.TopLeftCorner,
			CommunitiesFrame.GuildMemberDetailFrame.Border.BottomLeftCorner,
			CommunitiesFrame.GuildMemberDetailFrame.Border.BottomRightCorner, }) do
			CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.BottomLeftCorner:SetAlpha(0)
			CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.BottomRightCorner:SetAlpha(0)
			CommunitiesFrame.GuildFinderFrame.InsetFrame.NineSlice.BottomLeftCorner:SetAlpha(0)
			CommunitiesFrame.GuildFinderFrame.InsetFrame.NineSlice.BottomRightCorner:SetAlpha(0)
			CommunitiesFrame.MaximizeMinimizeFrame:SetAlpha(0.3)
			ClubFinderGuildFinderFrame.DisabledFrame.NineSlice.BottomLeftCorner:SetAlpha(0)
			ClubFinderGuildFinderFrame.DisabledFrame.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- Macro
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_MacroUI" then
		for i, v in pairs({ MacroFrame.NineSlice.TopEdge,
			MacroFrame.NineSlice.RightEdge,
			MacroFrame.NineSlice.BottomEdge,
			MacroFrame.NineSlice.LeftEdge,
			MacroFrame.NineSlice.TopRightCorner,
			MacroFrame.NineSlice.TopLeftCorner,
			MacroFrame.NineSlice.BottomLeftCorner,
			MacroFrame.NineSlice.BottomRightCorner,
			MacroFrameInset.NineSlice.BottomEdge, }) do
			MacroFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			MacroFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- AuctionHouse
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_AuctionHouseUI" then
		for i, v in pairs({ AuctionHouseFrame.NineSlice.TopEdge,
			AuctionHouseFrame.NineSlice.RightEdge,
			AuctionHouseFrame.NineSlice.BottomEdge,
			AuctionHouseFrame.NineSlice.LeftEdge,
			AuctionHouseFrame.NineSlice.TopRightCorner,
			AuctionHouseFrame.NineSlice.TopLeftCorner,
			AuctionHouseFrame.NineSlice.BottomLeftCorner,
			AuctionHouseFrame.NineSlice.BottomRightCorner,
			AuctionHouseFrame.NineSlice.BottomEdge,
			AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.TopEdge,
			AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.RightEdge,
			AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.BottomEdge,
			AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.LeftEdge,
			AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.TopRightCorner,
			AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.TopLeftCorner,
			AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.BottomLeftCorner,
			AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.BottomRightCorner,
			AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.BottomEdge,
			AuctionHouseFrame.BuyDialog.Border.TopEdge,
			AuctionHouseFrame.BuyDialog.Border.RightEdge,
			AuctionHouseFrame.BuyDialog.Border.BottomEdge,
			AuctionHouseFrame.BuyDialog.Border.LeftEdge,
			AuctionHouseFrame.BuyDialog.Border.TopRightCorner,
			AuctionHouseFrame.BuyDialog.Border.TopLeftCorner,
			AuctionHouseFrame.BuyDialog.Border.BottomLeftCorner,
			AuctionHouseFrame.BuyDialog.Border.BottomRightCorner,
			AuctionHouseFrame.BuyDialog.Border.BottomEdge, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- FlightMap
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_FlightMap" then
		for i, v in pairs({ FlightMapFrame.BorderFrame.NineSlice.TopEdge,
			FlightMapFrame.BorderFrame.NineSlice.RightEdge,
			FlightMapFrame.BorderFrame.NineSlice.BottomEdge,
			FlightMapFrame.BorderFrame.NineSlice.LeftEdge,
			FlightMapFrame.BorderFrame.NineSlice.TopRightCorner,
			FlightMapFrame.BorderFrame.NineSlice.TopLeftCorner,
			FlightMapFrame.BorderFrame.NineSlice.BottomLeftCorner,
			FlightMapFrame.BorderFrame.NineSlice.BottomRightCorner,	}) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- TradeSkill
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_TradeSkillUI" then
		for i, v in pairs({ TradeSkillFrame.NineSlice.TopEdge,
			TradeSkillFrame.NineSlice.RightEdge,
			TradeSkillFrame.NineSlice.BottomEdge,
			TradeSkillFrame.NineSlice.LeftEdge,
			TradeSkillFrame.NineSlice.TopRightCorner,
			TradeSkillFrame.NineSlice.TopLeftCorner,
			TradeSkillFrame.NineSlice.BottomLeftCorner,
			TradeSkillFrame.NineSlice.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- Inspect
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_InspectUI" then
		for i, v in pairs({ InspectFrame.NineSlice.TopEdge,
			InspectFrame.NineSlice.RightEdge,
			InspectFrame.NineSlice.BottomEdge,
			InspectFrame.NineSlice.LeftEdge,
			InspectFrame.NineSlice.TopRightCorner,
			InspectFrame.NineSlice.TopLeftCorner,
			InspectFrame.NineSlice.BottomLeftCorner,
			InspectFrame.NineSlice.BottomRightCorner,
			InspectFrameInset.NineSlice.BottomEdge, }) do
			InspectFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			InspectFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			InspectModelFrameBorderBottom:SetAlpha(0)
			InspectModelFrameBorderBottom2:SetAlpha(0)
			InspectModelFrameBorderLeft:SetAlpha(0)
			InspectModelFrameBorderRight:SetAlpha(0)
			InspectModelFrameBorderTop:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- Wardrobe/Transmogrify
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_Collections" or name == "Blizzard_Wardrobe" then
		for i, v in pairs({ WardrobeFrame.NineSlice.TopEdge,
			WardrobeFrame.NineSlice.RightEdge,
			WardrobeFrame.NineSlice.BottomEdge,
			WardrobeFrame.NineSlice.LeftEdge,
			WardrobeFrame.NineSlice.TopRightCorner,
			WardrobeFrame.NineSlice.TopLeftCorner,
			WardrobeFrame.NineSlice.BottomLeftCorner,
			WardrobeFrame.NineSlice.BottomRightCorner, }) do
			WardrobeCollectionFrame.ItemsCollectionFrame.NineSlice.BottomLeftCorner:SetAlpha(0)
			WardrobeCollectionFrame.ItemsCollectionFrame.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- ClassTrainer/FlightMaster
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_TrainerUI" then
		for i, v in pairs({ ClassTrainerFrame.NineSlice.TopEdge,
			ClassTrainerFrame.NineSlice.RightEdge,
			ClassTrainerFrame.NineSlice.BottomEdge,
			ClassTrainerFrame.NineSlice.LeftEdge,
			ClassTrainerFrame.NineSlice.TopRightCorner,
			ClassTrainerFrame.NineSlice.TopLeftCorner,
			ClassTrainerFrame.NineSlice.BottomLeftCorner,
			ClassTrainerFrame.NineSlice.BottomRightCorner,
			ClassTrainerFrameInset.NineSlice.BottomEdge, }) do
			ClassTrainerFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			ClassTrainerFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- Achievement
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_AchievementUI" then
		for i, v in pairs({ AchievementFrameHeaderRight,
	 		AchievementFrameHeaderLeft,
			AchievementFrameWoodBorderTopLeft,
			AchievementFrameWoodBorderBottomLeft,
			AchievementFrameWoodBorderTopRight,
			AchievementFrameWoodBorderBottomRight,
		 	AchievementFrameMetalBorderBottom,
			AchievementFrameMetalBorderBottomLeft,
			AchievementFrameMetalBorderBottomRight,
			AchievementFrameMetalBorderLeft,
			AchievementFrameMetalBorderRight,
			AchievementFrameMetalBorderTop,
			AchievementFrameMetalBorderTopLeft,
			AchievementFrameMetalBorderTopRight, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- Azerite
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_AzeriteUI" then
		for i, v in pairs({ AzeriteEmpoweredItemUI.BorderFrame.NineSlice.TopEdge,
			AzeriteEmpoweredItemUI.BorderFrame.NineSlice.RightEdge,
			AzeriteEmpoweredItemUI.BorderFrame.NineSlice.BottomEdge,
			AzeriteEmpoweredItemUI.BorderFrame.NineSlice.LeftEdge,
			AzeriteEmpoweredItemUI.BorderFrame.NineSlice.TopRightCorner,
			AzeriteEmpoweredItemUI.BorderFrame.NineSlice.TopLeftCorner,
			AzeriteEmpoweredItemUI.BorderFrame.NineSlice.BottomLeftCorner,
			AzeriteEmpoweredItemUI.BorderFrame.NineSlice.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- AlliedRaces
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_AlliedRacesUI" then
		for i, v in pairs({ AlliedRacesFrame.NineSlice.TopEdge,
			AlliedRacesFrame.NineSlice.RightEdge,
			AlliedRacesFrame.NineSlice.BottomEdge,
			AlliedRacesFrame.NineSlice.LeftEdge,
			AlliedRacesFrame.NineSlice.TopRightCorner,
			AlliedRacesFrame.NineSlice.TopLeftCorner,
			AlliedRacesFrame.NineSlice.BottomLeftCorner,
			AlliedRacesFrame.NineSlice.BottomRightCorner,
			AlliedRacesFrameInset.NineSlice.BottomEdge, }) do
			AlliedRacesFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			AlliedRacesFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- Inslands
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_IslandsQueueUI" then
		for i, v in pairs({ IslandsQueueFrame.NineSlice.TopEdge,
			IslandsQueueFrame.NineSlice.RightEdge,
			IslandsQueueFrame.NineSlice.BottomEdge,
			IslandsQueueFrame.NineSlice.LeftEdge,
			IslandsQueueFrame.NineSlice.TopRightCorner,
			IslandsQueueFrame.NineSlice.TopLeftCorner,
			IslandsQueueFrame.NineSlice.BottomLeftCorner,
			IslandsQueueFrame.NineSlice.BottomRightCorner,
		 	IslandsQueueFrame.ArtOverlayFrame.PortraitFrame, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- GarrisonCapacitive
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_GarrisonUI" then
		for i, v in pairs({ GarrisonCapacitiveDisplayFrame.NineSlice.TopEdge,
			GarrisonCapacitiveDisplayFrame.NineSlice.RightEdge,
			GarrisonCapacitiveDisplayFrame.NineSlice.BottomEdge,
			GarrisonCapacitiveDisplayFrame.NineSlice.LeftEdge,
			GarrisonCapacitiveDisplayFrame.NineSlice.TopRightCorner,
			GarrisonCapacitiveDisplayFrame.NineSlice.TopLeftCorner,
			GarrisonCapacitiveDisplayFrame.NineSlice.BottomLeftCorner,
			GarrisonCapacitiveDisplayFrame.NineSlice.BottomRightCorner,
			GarrisonCapacitiveDisplayFrameInset.NineSlice.BottomEdge, }) do
			GarrisonCapacitiveDisplayFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			GarrisonCapacitiveDisplayFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- Calendar
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_Calendar" then
		for i, v in pairs({ CalendarFrameTopMiddleTexture,
	 		CalendarFrameRightTopTexture,
			CalendarFrameRightMiddleTexture,
			CalendarFrameRightBottomTexture,
			CalendarFrameBottomRightTexture,
			CalendarFrameBottomMiddleTexture,
			CalendarFrameBottomLeftTexture,
			CalendarFrameLeftMiddleTexture,
			CalendarFrameLeftTopTexture,
			CalendarFrameLeftBottomTexture,
			CalendarFrameTopLeftTexture,
			CalendarFrameTopRightTexture,
			CalendarCreateEventFrame.Border.TopEdge,
			CalendarCreateEventFrame.Border.RightEdge,
			CalendarCreateEventFrame.Border.BottomEdge,
			CalendarCreateEventFrame.Border.LeftEdge,
			CalendarCreateEventFrame.Border.TopRightCorner,
			CalendarCreateEventFrame.Border.TopLeftCorner,
			CalendarCreateEventFrame.Border.BottomLeftCorner,
			CalendarCreateEventFrame.Border.BottomRightCorner,
			CalendarViewHolidayFrame.Border.TopEdge,
			CalendarViewHolidayFrame.Border.RightEdge,
			CalendarViewHolidayFrame.Border.BottomEdge,
			CalendarViewHolidayFrame.Border.LeftEdge,
			CalendarViewHolidayFrame.Border.TopRightCorner,
			CalendarViewHolidayFrame.Border.TopLeftCorner,
			CalendarViewHolidayFrame.Border.BottomLeftCorner,
			CalendarViewHolidayFrame.Border.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- AzeriteRespec
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_AzeriteRespecUI" then
		for i, v in pairs({ AzeriteRespecFrame.NineSlice.TopEdge,
			AzeriteRespecFrame.NineSlice.RightEdge,
			AzeriteRespecFrame.NineSlice.BottomEdge,
			AzeriteRespecFrame.NineSlice.LeftEdge,
			AzeriteRespecFrame.NineSlice.TopRightCorner,
			AzeriteRespecFrame.NineSlice.TopLeftCorner,
			AzeriteRespecFrame.NineSlice.BottomLeftCorner,
			AzeriteRespecFrame.NineSlice.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- ScrappingMachineFrame
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_ScrappingMachineUI" then
		for i, v in pairs({ ScrappingMachineFrame.NineSlice.TopEdge,
			ScrappingMachineFrame.NineSlice.RightEdge,
			ScrappingMachineFrame.NineSlice.BottomEdge,
			ScrappingMachineFrame.NineSlice.LeftEdge,
			ScrappingMachineFrame.NineSlice.TopRightCorner,
			ScrappingMachineFrame.NineSlice.TopLeftCorner,
			ScrappingMachineFrame.NineSlice.BottomLeftCorner,
			ScrappingMachineFrame.NineSlice.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)


-- ScrappingMachineFrame
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_TimeManager" then
		for i, v in pairs({ TimeManagerFrame.NineSlice.TopEdge,
			TimeManagerFrame.NineSlice.RightEdge,
			TimeManagerFrame.NineSlice.BottomEdge,
			TimeManagerFrame.NineSlice.LeftEdge,
			TimeManagerFrame.NineSlice.TopRightCorner,
			TimeManagerFrame.NineSlice.TopLeftCorner,
			TimeManagerFrame.NineSlice.BottomLeftCorner,
			TimeManagerFrame.NineSlice.BottomRightCorner,
			TimeManagerFrameInset.NineSlice.TopEdge,
			TimeManagerFrameInset.NineSlice.RightEdge,
			TimeManagerFrameInset.NineSlice.BottomEdge,
			TimeManagerFrameInset.NineSlice.LeftEdge,
			TimeManagerFrameInset.NineSlice.TopRightCorner,
			TimeManagerFrameInset.NineSlice.TopLeftCorner,
			StopwatchFrameBackgroundLeft, }) do
			TimeManagerFrameInset.NineSlice.BottomLeftCorner:SetAlpha(0)
			TimeManagerFrameInset.NineSlice.BottomRightCorner:SetAlpha(0)
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- AzeriteEssenceUI
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_AzeriteEssenceUI" then
		for i, v in pairs({ AzeriteEssenceUI.NineSlice.TopEdge,
			AzeriteEssenceUI.NineSlice.RightEdge,
			AzeriteEssenceUI.NineSlice.BottomEdge,
			AzeriteEssenceUI.NineSlice.LeftEdge,
			AzeriteEssenceUI.NineSlice.TopRightCorner,
			AzeriteEssenceUI.NineSlice.TopLeftCorner,
			AzeriteEssenceUI.NineSlice.BottomLeftCorner,
			AzeriteEssenceUI.NineSlice.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
				if AbyssUIAddonSettings.UIVertexColorFrames01 == true then
					v:SetVertexColor(1, 1, 1)
				elseif AbyssUIAddonSettings.UIVertexColorFrames02 == true then
					v:SetVertexColor(.2, .2, .2)
				elseif AbyssUIAddonSettings.UIVertexColorFrames03 == true then
					v:SetVertexColor(182/255, 42/255, 37/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames04 == true then
					v:SetVertexColor(236/255, 193/255, 60/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames05 == true then
					v:SetVertexColor(196/255, 31/255, 59/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames06 == true then
					v:SetVertexColor(163/255, 48/255, 201/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames07 == true then
					v:SetVertexColor(252/255, 163/255, 85/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames08 == true then
					v:SetVertexColor(190/255, 221/255, 115/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames09 == true then
					v:SetVertexColor(64/255, 220/255, 255/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames10 == true then
					v:SetVertexColor(86/255, 255/255, 184/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames11 == true then
					v:SetVertexColor(255/255, 155/255, 195/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames12 == true then
					v:SetVertexColor(23/255, 28/255, 99/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames13 == true then
					v:SetVertexColor(255/255, 255/255, 0/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames14 == true then
					v:SetVertexColor(0/255, 112/255, 222/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames15 == true then
					v:SetVertexColor(135/255, 135/255, 237/255)
				elseif AbyssUIAddonSettings.UIVertexColorFrames16 == true then
					v:SetVertexColor(199/255, 156/255, 110/255)
				elseif AbyssUIAddonSettings.UIVertexColorFramesColorPicker == true then
					local character = UnitName("player").."-"..GetRealmName()
					v:SetVertexColor(COLOR_MY_UI[character].Color.r, COLOR_MY_UI[character].Color.g, COLOR_MY_UI[character].Color.b)
				else
					v:SetVertexColor(.4, .4, .4)
				end
			else
				return nil
			end
		end
	end
end)
-- PvP UI
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_PVPUI" then
		for i, v in pairs({ PVPQueueFrame.HonorInset.NineSlice.BottomLeftCorner,
			PVPQueueFrame.HonorInset.NineSlice.BottomRightCorner,
			HonorFrame.Inset.NineSlice.BottomLeftCorner,
			HonorFrame.Inset.NineSlice.BottomRightCorner,
			ConquestFrame.Inset.NineSlice.BottomLeftCorner,
			ConquestFrame.Inset.NineSlice.BottomRightCorner,
			LFGListFrame.CategorySelection.Inset.NineSlice.BottomLeftCorner,
			LFGListFrame.CategorySelection.Inset.NineSlice.BottomRightCorne, }) do
			v:SetAlpha(0)
		end
	end
end)
-- Challenges
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_ChallengesUI" then
		for i, v in pairs({ ChallengesFrameInset.NineSlice.BottomLeftCorner,
			ChallengesFrameInset.NineSlice.BottomRightCorner, }) do
			v:SetAlpha(0)
		end
	end
end)
--------------- Parts that need to be dark and load (keep aesthetic) ---------------
-- KeyBinding
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, name)
	if name == "Blizzard_BindingUI" then
		for i, v in pairs({ KeyBindingFrame.BG.TopEdge,
			KeyBindingFrame.BG.RightEdge,
			KeyBindingFrame.BG.BottomEdge,
			KeyBindingFrame.BG.LeftEdge,
			KeyBindingFrame.BG.TopRightCorner,
			KeyBindingFrame.BG.TopLeftCorner,
			KeyBindingFrame.BG.BottomLeftCorner,
			KeyBindingFrame.BG.BottomRightCorner, }) do
			if AbyssUIAddonSettings ~= nil then
					v:SetVertexColor(.4, .4, .4)
			else
				return nil
			end
		end
	end
end)
----------------------------- Needs Review -----------------------------
-- End
