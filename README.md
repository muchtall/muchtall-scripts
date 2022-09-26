# muchtall-scripts
Just a collection of scripts I've created and accumulated over the years

* For use in ~/bin/
  * **colorize.pl**: Script that colorizes output based on a regex match, using the standard terminal color names.
    * Run without args to see usage
    * Example usage: ```ls -la ~ | colorize magenta "drwxrwxr-x" | colorize green "-rw-rw-r--" | colorize blue "-rwxrwxrwx"```
  * **diskusage.sh**: Quickly evaluate and drill down into a path for disk usage. Limits the space evaluation to the mounted filesystem.
    * Run as root for best results
    * Example usage: ```diskusage.sh /var/log/```
* AutoHotKey (AHK)
  * **Cleanup PuTTY Windows.ahk**: Closes out disconnected PuTTY sessions that have been cluttering up your taskbar.
  * **PuttyFontResize.ahk**:  Resizes the current font in PuTTY to large (14) or small (8) by pressing Ctrl + Shift + = __or__ Ctrl + Shift + -
* Misc
  * **wsl2-time-sync.txt**: Workaround for https://github.com/microsoft/WSL/issues/5324
    * Copy/paste the contained commands to set up the script
    * Assumes you have set cron up as a running service in the WSL2 VM
