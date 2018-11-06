require('vis')

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set ai')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set relativenumbers')
	vis:command('set tabwidth 8')

	-- git commit message (probably with diff)
	if string.match(win.file.name, "COMMIT_EDITMSG$") then
		vis:command("set syntax diff")
	end
end)
