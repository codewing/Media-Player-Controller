#include <MsgBoxConstants.au3>

; Media Player Path - Set according to your installation folder
Global $mediaPlayerLocation = IniRead("settings.ini", "Main", "MediaPlayerLocation", "PATH/TO/MEDIAPLAYER.exe")
Global $mediaPlayerTitle = IniRead("settings.ini", "Main", "MediaPlayerTitle", "REPLACE WITH WINDOW NAME")

; Keeps the program running
Global $active = 1

Global $hWnd = 0

If StringCompare($mediaPlayerLocation, "PATH/TO/MEDIAPLAYER.exe") == 0 Or StringCompare($mediaPlayerTitle, "REPLACE WITH WINDOW NAME") == 0 Then
   ; display error and let the program terminate
   MsgBox($MB_SYSTEMMODAL, "Error in configuration!", "Please set the path to the mediaplayer executable and its window title in the settings.ini file!")
Else
   ; Keep program alive
   SetHotKeys()
   Loop()
EndIf

Func Loop()
   While $active
	  ; Sleep here to keep the program active
	  Sleep(1000)
	  If Not ($hWnd == 0) And Not WinExists($hWnd) Then
		 $hWnd = 0
	  EndIf
   WEnd
EndFunc

Func SetHotKeys()
   HotKeySet("{MEDIA_PLAY_PAUSE}", "PlayPause")
   HotKeySet("{MEDIA_NEXT}", "NextSong")
   HotKeySet("{MEDIA_PREV}", "PreviousSong")
   HotKeySet("{MEDIA_STOP}", "ExitMediaPlayerAndScript")
 EndFunc

Func NextSong()
   If $hWnd <> 0 then
	  ControlSend($hWnd, "", "", "{MEDIA_NEXT}")
   EndIf
EndFunc

Func PreviousSong()
   If $hWnd <> 0 then
	  ControlSend($hWnd, "", "", "{MEDIA_PREV}")
   EndIf
EndFunc

; Plays/Pauses the playback if a handle was found.
; Otherwise it starts the media player
Func PlayPause()
   If $hWnd <> 0 then
	  ControlSend($hWnd, "", "", "{MEDIA_PLAY_PAUSE}")
   Else
	  StartMediaPlayer()
	  PlayPause()
   EndIf
EndFunc

Func StartMediaPlayer()
   Global $hWnd = WinWait($mediaPlayerTitle, "", 1)
   If $hWnd = 0 then
	  ; Run Plex Media Player
	  Run($mediaPlayerLocation, "", @SW_SHOWDEFAULT)
	  Sleep(2000)
	  Global $hWnd = WinWait($mediaPlayerTitle, "", 1)
   EndIf
EndFunc

Func ExitMediaPlayerAndScript()
   If $hWnd <> 0 then
	  WinClose($hWnd)
   Else
	  $active = 0
   EndIf
EndFunc

