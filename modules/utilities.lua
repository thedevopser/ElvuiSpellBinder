local E, L, V, P, G = unpack(ElvUI) -- Engine, Locales, PrivateDB, ProfileDB, GlobalDB

local addonName, addon = ...

function addon:mpairs(t, ...)
    local i, a, k, v = 1, {...}
    return
        function()
            repeat
            k, v = next(t, k)
            if k == nil then
                i, a[1], k = i + 1, a[i]
            end
            until k~=nil or not t
            return k, v
        end
end

function addon:dir(t)
    for k,v in pairs(t) do
        print(k,v)
    end
end

function addon:TableLenght(t)
    local count = 0
    for k,v in pairs(t) do
        count = count + 1
    end
end
