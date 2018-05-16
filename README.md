# mpv-ajatt 

## Overview

`ajatt.lua` is a script makes copying and translating subtitles a breeze.  
It's heavily inspired by the awesome [Animelon](https://animelon.com).

It allows the user to either copy the current subtitles line,
or open it up in Jisho.org

## Installation (Windows)

### Installing mpv

1. Download the [latest windows mpv build](https://sourceforge.net/projects/mpv-player-windows/files/64bit/).
2. Extract it using [7zip](https://www.7-zip.org/download.html). Ex: `C:\mpv\`.
3. Navigate to mpv's `installer\` folder. Ex: `C:\mpv\installer\`.
4. Right-Click `mpv-install.bat` -> Run As Administrator.
5. Wait for the script to finish. 
6. You should now be able to right click any video file and open it with mpv.

### Installing `ajatt.lua`

1. Open up the file browser.
2. Navigate here - `%APPDATA%\mpv`.
3. Create a folder called `scripts`.
4. Place `ajatt.lua` inside the `scripts` folder.
5. mpv will now load `ajatt.lua` automatically.

## Usage (Keybindings)

### `ajatt.lua` bindings

Keybinding | Function
---------- | ---------
`Shift + x` | Copy the current subtitles line into clipboard
`Shift + k` | Open the current subtitles line in Jisho

### Useful default bindings

Keybinding | Function
---------- | ---------
`v` | toggle subtitles visibility on/off
`Ctrl + left/right` | Seek to previous/next subtitles line (works when the subtitles are invisible!)
`Alt + up/down` | Hiding hardcoded subtitles (vertical video panning)

You can find the full list of mpv's keybindings [here](https://mpv.io/manual/master/#keyboard-control).

### Custom Keybindings

Changing the keybinding is very easy.
Simply open up `ajatt.lua` in your favorite text editor,
scroll down to the bottom of the file, and change the last lines to your liking.

## Suggestions / Troubleshooting

Keep in mind that i've only tested this on Windows 10.
It will only work on Windows, but it should be very straight forward to port to other OSes.

### If something doesn't work

You need to grab the error / exception string from mpv via the command prompt - 

1. Open the Windows command prompt
2. `cd C:\mpv`
3. `mpv.exe my_cool_anime.mkv`
4. Perform the broken functionality...
5. Copy the error from the command prompt

### Reaching out to me

Feel free to either open up a issue here after getting the error message / crash report (see above).
Or just ping me on the Discord server.

## Links

- [Animelon](https://animelon.com)
- [mpv](https://mpv.io/) ([keybindings](https://mpv.io/manual/master/#keyboard-control))
- [Jisho](https://jisho.org/)
