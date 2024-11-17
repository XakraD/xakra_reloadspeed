function GetCWeaponInfo(weaponName, params)
    return string.format([[
  <CWeaponInfo>
    <Name>%s</Name>
    <WeaponReload type="CWeaponReload">
      <AnimReloadRate value="%.2f" />
    </WeaponReload>
  </CWeaponInfo>
]], weaponName, params.AnimReloadRate or 1.0)
end

local filePath = GetResourcePath(GetCurrentResourceName()).."/files/reloadspeeds.meta"
local file = io.open(filePath, "w")

local Content = [[<?xml version="1.0" encoding="UTF-8"?>
<Infos>
]]

for weaponName, params in pairs(Config.Weapons) do
  Content = Content..GetCWeaponInfo(weaponName, params)
end

Content = Content .. [[
</Infos>
]]

if file then
  file:write(Content)
  file:close()
end