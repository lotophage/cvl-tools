#!/usr/bin/expect
set file1 [lindex $argv 0]
set file2 [lindex $argv 1]
set range [lindex $argv 2]

spawn /usr/local/posminus/0.1.3/POSminus $file1 $file2
expect "Enter Range Filename*"
send $range\n
expect eof
exit