function SuppressPopup(popupInfo)
    if (popupInfo.Type == ButtonPopupTypes.BUTTONPOPUP_WHOS_WINNING) then
        m_PopupInfo = popupInfo
	
        UIManager:DequeuePopup(ContextPtr:LookUpControl("/InGame/WhosWinningPopup"))
        print("Hopefully this suppresses the whoswinning popups")
        --ContextPtr:SetHide(false)
    end
       if (popupInfo.Type == ButtonPopupTypes.BUTTONPOPUP_GOLDEN_AGE_REWARD) then
        m_PopupInfo = popupInfo
	
        UIManager:DequeuePopup(ContextPtr:LookUpControl("/InGame/GoldenAgePopup"))
        print("Hopefully this suppresses the whoswinning popups")
        --ContextPtr:SetHide(false)
    end
end
Events.SerialEventGameMessagePopup.Add(SuppressPopup)