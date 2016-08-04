local function run(msg)
local text = [[`telenymous first version :) `
*An Administrator The PowerFull Bot Based On* `teleseed`  *And Bilingual Written In Lua*
`Double Team`
[sepehr](telegram.me/MrBlackLife)
[mobin](telegram.me/x\Xxcrazy_boyxX)
`FUCK ALL` *arab*
:D

]]
 send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return { 
patterns = {
"^!telenymous$",
}, 
run = run
 }




