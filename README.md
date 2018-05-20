# Media-Player-Controller

This little AutoIT script can be used to make your media player (or other program) listen to the input of the media keys.  
It is basically forwarding the media key events to the program.

## Usage

- Download the [latest release](https://github.com/codewing/Media-Player-Controller/releases/latest)
- Change the settings file to your needs.
  - For Plex Media Player it could be something like:   
    ``` MediaPlayerLocation="C:\Program Files (x86)\Plex Media Player\PlexMediaPlayer.exe" 
		MediaPlayerTitle="Plex Media Player"```
- Run the media player controller executable

## Setup

- Install [AutoIt](https://www.autoitscript.com/site/autoit/downloads/)
- Change the settings file to your needs.
  - For Plex Media Player it could be something like:   
    ``` MediaPlayerLocation="C:\Program Files (x86)\Plex Media Player\PlexMediaPlayer.exe" 
		MediaPlayerTitle="Plex Media Player"```   
- Compile the code
  - You can do this via the SciTE Editor which comes with the AutoIT installation.  
  Open the file with the editor and click on [Tools] -> [Build]  
  - Alternatively you can use the ``` AutoIt3\Aut2Exe\Aut2exe_x64.exe ```,  which allows you to add an icon to your exe very easily.
- You should be able to locate a new .exe file next to your script and settings file.

## Contributing

If you have found any bugs or want to add new cool features like using a config file instead of hardcoding the values, feel free to create a pull request or open an issue.

## Thanks to
- [materialdesignicons.com](https://materialdesignicons.com/) for the icon
