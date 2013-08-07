local setmetatable = setmetatable

local GetLocale = GetLocale

local L = {}

if (GetLocale() == "ruRU") then
    L = {
        -- TODO: Russian lang
    }
end

-- Superhack allowing use key as value if not present in table
LibStub("Gladdy").L = setmetatable(L, {
    __index = function(t, k)
        return k
    end
})