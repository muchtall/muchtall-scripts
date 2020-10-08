# muchtall-scripts
Just a collection of scripts I've created and accumulated over the years

* For use in ~/bin/
  * **colorize.pl**: Script that colorizes output based on a regex match, using the standard terminal color names.
    * Run without args to see usage
    * Example usage: ```ls -la ~ | colorize magenta "drwxrwxr-x" | colorize green "-rw-rw-r--" | colorize blue "-rwxrwxrwx"```
  * **wsl2-time-sync.txt**: Workaround for https://github.com/microsoft/WSL/issues/5324
    * Copy/paste the contained commands to set up the script
    * Assumes you have set cron up as a running service in the WSL2 VM
  * **Cleanup PuTTY Windows.ahk**: Closes out disconnected PuTTY sessions that have been cluttering up your taskbar.
