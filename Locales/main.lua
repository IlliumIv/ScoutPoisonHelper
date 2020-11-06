Global("Locales", {})

function getLocale()
	return Locales[common.GetLocalization()] or Locales["eng"]
end

--------------------------------------------------------------------------------
-- Russian
--------------------------------------------------------------------------------

Locales["rus"]={}
Locales["rus"]["poisonBuffTarget"]="������ ��"
Locales["rus"]["poisonAction1"]="�������"
Locales["rus"]["poisonAction2"]="����"


--------------------------------------------------------------------------------
-- English
--------------------------------------------------------------------------------

Locales["eng"]={}
Locales["eng"]["poisonBuffTarget"]="������ ��"
Locales["eng"]["poisonAction1"]="�������"
Locales["eng"]["poisonAction2"]="����"

