# Media-Player-Controller

This little AutoIT script can be used to make your media player (or other program) listen to the input of the media keys.  
It is basically forwarding the media key events to the program.

## Setup

- Install [AutoIt](https://www.autoitscript.com/site/autoit/downloads/)
- Change line 2 and 3 to your needs.
  - For Plex Media Player it could be something like:   
  ``` Global $mediaPlayerLocation = "C:\Program Files (x86)\Plex Media Player\PlexMediaPlayer.exe" ```   
  and   
  ``` Global $mediaPlayerTitle = "Plex Media Player" ``` 
- Compile the code
  - You can do this via the SciTE Editor which comes with the AutoIT installation.  
  Open the file with the editor and click on [Tools] -> [Build]
- You should be able to locate a new .exe file next to your script.

## Contributing

If you found any bugs or added new cool features like using a config file instead of hardcoding the values, feel free to create a pull request.
