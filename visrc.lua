require('vis')
require('themes/white')

local function movelines(dir)
	local win = vis.win
	local file = win.file

	local from = dir ==  1 and #win.selections or 1
	local to   = dir == -1 and #win.selections or 1

	for i = from, to, 0 - dir do
		local sel = win.selections[i]
		local line = sel.line
		local col = sel.col
		local str = file.lines[line + dir]

		local _, lines = string.gsub(file:content(sel.range), "\n.", "")

		local i = line + dir
		if dir == 1 then i = i + lines end

		while 1 do
			file.lines[i] = file.lines[i - dir]
			if (dir==1 and i==line+1) or (dir==-1 and i==line+lines-1) then
				break
			end
			i = i - dir
		end

		sel:to(line + dir, col)
		file.lines[dir == -1 and line + lines or line] = str
	end

	win:draw()
end

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set theme white')
	vis:command('set ai')

	vis:map(vis.modes.NORMAL, "<C-S-Up>", function () movelines(-1) end)
	vis:map(vis.modes.NORMAL, "<C-S-Down>", function () movelines(1) end)
	vis:map(vis.modes.INSERT, "<C-S-Up>", function () movelines(-1) end)
	vis:map(vis.modes.INSERT, "<C-S-Down>", function () movelines(1) end)
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set relativenumbers')
	vis:command('set tabwidth 8')
	vis:command('set rnu')
	
	-- git commit message (probably with diff)
	if win.file.name and string.match(win.file.name, "COMMIT_EDITMSG$") then
		vis:command("set syntax diff")
	end
end)