# muchtall-scripts
Just a collection of scripts I've created and accumulated over the years

* For use in ~/bin/
  * **colorize.pl**: Script that colorizes output based on a regex match, using the standard terminal color names.
    * Run without args to see usage
    * Example usage: ```ls -la ~ | colorize magenta "drwxrwxr-x" | colorize green "-rw-rw-r--" | colorize blue "-rwxrwxrwx"```
