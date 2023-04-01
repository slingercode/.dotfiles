require("slinger.packer")
require("slinger.set")
require("slinger.remap")

-- Function used to verify the OS
local has = function (x)
  return vim.fn.has(x) == 1
end

local is_mac = has("macunix")

if is_mac then
  require("slinger.macos")
end

