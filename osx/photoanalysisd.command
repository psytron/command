launchctl disable gui/$UID/com.apple.photoanalysisd

And this will kill the currently running process, after you disabled it.

launchctl kill -TERM gui/$UID/com.apple.photoanalysisd