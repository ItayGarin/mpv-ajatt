-------------
--  Jisho  --
-------------

function shell_escape(...)
 local command = type(...) == 'table' and ... or { ... }
 for i, s in ipairs(command) do
  s = (tostring(s) or ''):gsub('"', '\\"')
  if s:find '[^A-Za-z0-9_."/-]' then
   s = '"' .. s .. '"'
  elseif s == '' then
   s = '""'
  end
  command[i] = s
 end
 return table.concat(command, ' ')
end

function urlencode(str)
   if (str) then
      str = string.gsub (str, "\n", "\r\n")
      str = string.gsub (str, "([^%w])",
         function (c) return string.format ("%%%02X", string.byte(c)) end)
   end
   return str
end


function open_jisho()
    mp.set_property_bool('pause', true)
    os.execute(shell_escape("explorer", string.format("http://jisho.org/search/%s", urlencode(mp.get_property("sub-text")))))
end

---------------
-- Clipboard --
---------------

utils = require 'mp.utils'

local function set_clipboard()
  mp.set_property_bool('pause', true)
  local res = utils.subprocess({ args = {
                                   'powershell', '-NoProfile', '-Command', string.format([[& {
                                     Trap {
                                     Write-Error -ErrorRecord $_
                                     Exit 1
                                     }
                                     Add-Type -AssemblyName PresentationCore
                                     [System.Windows.Clipboard]::SetText('%s')
                                     }]], mp.get_property("sub-text"))
                              } })
end

-----------------
-- Keybindings --
-----------------

mp.add_key_binding("X", "set_clipboard", set_clipboard)
mp.add_key_binding("K", "Jisho", open_jisho)
