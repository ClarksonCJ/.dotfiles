hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "w", function()
	hs.notify.new({ title = "Hammerspoon", informativeText = "Hello World" }):send()
end)
