-- Get the current script's directory
local currentDir = debug.getinfo(1).source:match("@(.*)$")
currentDir = currentDir:match("(.*/).*")

-- Require all files in the directory
for file in io.popen("ls " .. currentDir):lines() do
    if file:match(".lua$") and file ~= "init.lua" then
        local moduleName = file:match("(.*)%.lua$")
        require('config.' .. moduleName)
    end
end
