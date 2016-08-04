local function run(msg, matches)
if matches[1] == "setspam" then
if not is_admin1(msg) then
return 'شما سودو نیستید'
end
local spam = matches[2]
redis:set('bot:spam',spam)
return '😈😈😈😈😈'
end
if matches[1] == 'spam' then
if not is_momod(msg) then
return 
end
    local hash = ('bot:spam')
    local spam = redis:get(hash)
    if not spam then
    return ' ثبت نشده'
    else
    reply_msg(msg.id, spam, ok_cb, false)
    end
    end
if matches[1] == 'delspam' then
if not is_admin1(msg) then
return 'شما ادمین نیستید'
end
    local hash = ('bot:spam')
    redis:del(hash)
return ' پاک شد'
end
end
return {
patterns ={
"^[!#/](setspam) (.*)$",
"^[!#/](spam)$",
"^[!#/](delspam)$",
},
run = run
}
