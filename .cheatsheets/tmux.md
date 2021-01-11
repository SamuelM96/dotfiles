# Tmux
Prefix: `Ctrl+a`

### Copy mode (basically vim)
| Shortcut  | Description |
|-----------|-------------|
|[			|Copy/scroll mode (vim mode)|
|hjkl		|Move around|
|v			|Visual mode|
|V			|Line visual mode|
|y			|Copy/yank|
|Y			|Yank, exit, and paste|
|Ctrl+f		|Page up (forward)|
|Ctrl+b		|Page down (back)|
|Ctrl+u		|Half page up|
|Ctrl+d		|Half page down|
|H			|Move cursor to the top|
|L			|Move cursor to the bottom|
|J			|Scroll up one line|
|K			|Scroll down one line|
|$			|End of line|
|0			|Start of line|
|w			|Next word|
|b			|Previous word|
|/			|Search forward|
|?			|Search backward|
|n			|Next search|
|N			|Prev search|
|:			|Goto line|
|q			|Quit mode|

### Layouts
| Shortcut  | Description |
|-----------|-------------|
|Enter		|Cycle pane layouts|
|M-[num]	|Choose pane layout|
|=			|Main vertical layout |
|+			|Main horizontal layout |

### Pane management
| Shortcut  | Description |
|-----------|-------------|
|x			|Kill pane|
|-			|Split pane vertically|
|\			|Split pane horizontally|
|[num]		|Select pane [num]|
|hjkl		|Select pane in direction |
|[arrow]	|Select pane in direction |
|Ctrl+hjkl	|Select pane without prefix|
|o			|Select next pane|
|;			|Select previously selected pane|
|q			|Display pane indices (press index to switch to that pane)|
|HJKL		|Resize pane (can be repeated quickly without prefix)|
|z			|Zoom into current pane (full screen it)|
|!			|Promote pane to window|
|]			|Paste (from text copied in copy mode)|
|Ctrl+o		|Rotate panes|
|>			|Pane menu|
|{			|Swap pane to the left|
|}			|Swap pane to the left|
|m			|Mark pane|
|M			|Unmark pane|

### Session management
| Shortcut  | Description |
|-----------|-------------|
|$			|Rename session|
|s			|List sessions|
|d			|Detach from session|
|)			|Next session|
|(			|Prev session|

### Window management
| Shortcut  | Description |
|-----------|-------------|
|c			|Create window|
|&			|Kill window|
|n			|Select next window|
|space		|Select next window|
|p			|Select prev window|
|backspace	|Select prev window|
|w			|Choose window/pane interactively|
|'			|Prompt to select window by index|
|.			|Prompt to move window to a new index|
|f			|Prompt to search text across all windows/panes|
|,			|Rename window|
|<			|Window menu|

### Commands (has tab completion)
| Command               | Description |
|-----------------------|-------------|
|:set synchronize-panes	| Synchronize open panes in current window to type in all of them at once|
|:choose-buffer			| Choose buffer to paste|

### Other
| Shortcut  | Description |
|-----------|-------------|
|#			|List buffers|
|Alt-#		|Choose buffer|
|r			|Reload config|

## Plugins 
| Shortcut  | Description |
|-----------|-------------|
|I			|Install plugins|
|U			|Update plugins|

### Copycat
| Shortcut  | Description |
|-----------|-------------|
|/			|Regex search|
|Ctrl-f		|File search|
|Ctrl-g		|Git status files|
|Alt-h		|SHA-1/SHA-256 hashes (good for `git log`)|
|Ctrl-u		|URL search|
|Ctrl-d		|Number search|
|Alt-i		|IP search|

### Fingers (maybe replaces Copycat?)
| Shortcut  | Description |
|-----------|-------------|
|F				|Fingers mode, which finds various stuff like file paths, SHAs, IPs, etc|
|Ctrl-[a-z]		|Copies selection and opens it by default (configurable)|
|Shift-[a-z]	|Copies and pastes selection (configurable)|
|Alt-[a-z]		|Nothing by default (configurable)|
|Tab			|Multiselection mode. Second press exits.|
|Space			|Toggles compact hints|
|Ctrl-c			|Exit mode|
|Esc			|Exit mode|
|?				|Show help|

### fzf-url
| Shortcut  | Description |
|-----------|-------------|
|u			|Fuzzy search URLs in the current pane, paste selected|
|Tab		|Multi select|
|Ctrl-r		|Toggle selection |

### Logging
| Shortcut  | Description |
|-----------|-------------|
|P			Start/stop logging (creates log in current directory)|
|Alt-p		"Screen capture" current visible text in the pane|
|Alt-P		Save complete pane history|
|Alt-c		Clear pane history|

### Sessionist
| Shortcut  | Description |
|-----------|-------------|
|C			|Create session|
|g			|Go to session|
|X			|Kill session|
|S			|Switch to last sessions|
|@			|Promote pane to session|
|t<key>		|Join marked pane to current session|
- \<key>
	- `h`, `-`, `"`: 	Join horizontally
	- `v`, `|`, `%`: 	Join vertically
	- `f`, `@`: 		Join full screen

### Open
| Shortcut  | Description |
|-----------|-------------|
|o			|Opens the highlighted selected with `xdg-open` on Linux and `open` on OSX|
|Ctrl+o		|Opens selection in `$EDITOR`|
|S			|Technically it's supposed to google your selection, but doesn't work for me|

### Resurrect
| Shortcut  | Description |
|-----------|-------------|
|Ctrl+s		|Save state|
|Ctrl+r		|Restore state|

### Yank
| Shortcut  | Description |
|-----------|-------------|
|y			|Copies text to systems clipboard|
|Y			|Normal mode: Copy panes current working directory to the system clipboard|
|Y			|Copy mode: Pastes selection |

## ZSH aliases
| Command       | Description |
|---------------|-------------|
|`ta [name]`		|Attach to session with [name]|
|`tad [name]`		|Attach to sessions and detach all other clients attached to that session|
|`ts [name]`		|New session with [name]|
|`tl`				|List sessions|
|`tkss [name]`		|Kill session [name]|
|`tksv`				|Kill tmux server|

## Tmuxinator
- Most can be shortened to their first letter, e.g. `tmuxinator n` for `new`, etc.
- Also recommended to alias `tmuxinator` to something shorter, e.g. `tmx`

| Command								| Description |
|---------------------------------------|-------------|
|`tmuxinator new [project]`				|Create a new project|
|`tmuxinator new -l [project]`			|Create a new local project (config stored in current dir)|
|`tmuxinator edit [project]`			|Edit project file|
|`tmuxinator copy [existing] [new]`		|Make a copy of a project|
|`tmuxinator list`						|List projects|
|`tmuxinator start [project] [args]`	|Start using a project|
|`tmuxinator local`						|Start using the local project|
|`tmuxinator stop [project]`			|Stop using a project|
|`tmuxinator delete [project]`			|Delete a project|
