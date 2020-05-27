--@Author: iThorgrimHub#1775
--@Date:   2019-11-13 22:49

local Days = {"Saturday", "Sunday"}

local multi = 2 -- 2 == exp x2 (Basic rate x multi)

local function getExp(event, player, amount, _)
    for _, day in ipairs(Days) do
        local getDate = os.date("%A")
        if (getDate == day) then
            return amount * multi
        end
    end
end
RegisterPlayerEvent(12, getExp)
