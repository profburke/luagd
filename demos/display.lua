function isMacOS()
   local osname = io.popen('uname -s'):read()
   return osname == 'Darwin'
end

function display(file)
   local program = 'display'
   if isMacOS() then
      program = 'open'
   end
   os.execute(program .. ' ' .. file)
end
