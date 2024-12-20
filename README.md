# Table of Contents
- [template](#template)
- [uname](#uname)
- [mkdir](#mkdir)
- [pwd](#pwd)
- [cd](#cd)
- [mv](#mv)
- [ls](#ls)
- [cp](#cp)
- [touch](#touch)
- [cat](#cat)
- [tac](#tac)
- [xxd](#xxd)
- [rm](#rm)
- [top](#top)
- [chown](#chown)
- [chgrp](#chgrp)
- [chmod](#chmod)
- [ln](#ln)
- [wc](#wc)
- [which](#which)
- [netcat](#netcat)
- [md5sum](#md5sum)
- [sha256sum](#sha256sum)
- [dd](#dd)
- [mktemp](#mktemp)
- [date](#date)
- [df](#df)
- [du](#du)
- [env](#env)
- [type](#type)
- [id](#id)
- [sleep](#sleep)
- [users](#users)
- [groups](#groups)
- [whoami](#whoami)
- [who](#who)
- [uptime](#uptime)
- [realpath](#realpath)
- [install](#install)
- [mkfifo](#mkfifo)
- [mknod](#mknod)
- [dir](#dir)
- [shred](#shred)
- [rmdir](#rmdir)
- [sync](#sync)
- [shuf](#shuf)
- [arch](#arch)
- [fmt](#fmt)
- [expand](#expand)
- [unexpand](#unexpand)
- [printf](#printf)
- [test](#test)
- [tee](#tee)
- [nl](#nl)
- [stat](#stat)
- [nohup](#nohup)
- [base32](#base32)
- [truncate](#truncate)
- [chroot](#chroot)
- [nproc](#nproc)
- [tr](#tr)
- [comm](#comm)
- [taskset](#taskset)
- [setfacl and getfacl](#setfacl)
- [cut](#cut)
- [awk](#awk)
- [grep](#grep)
- [sort](#sort)
- [unique](#unique)
- [split](#split)
- [sed](#sed)
- [chage](#chage)
- [systemctl](#systemctl)
- [kill](#kill)
- [traceroute](#traceroute)
- [nice](#nice)
- [umask](#umask)
- [pmap](#pmap)

# Some command help fixing network
if interface is not provide ip add try the command "systemctl restart smbd && dhclient eth0" (provide ip for interface 0)               

#### Filesystem
Types of filesystem: ext3, ext4, xfs, NTFS, etc...                  
/boot                   contains file that is used by the boot loader (grub.cfg)            
/root                   root user directory            
/dev                    system devices (disk, cdrom, flash, speaker, keyboard, etc)             
/etc                    configuaration files                    
/bin or /usr/bin        common user command
/sbin or /usr/sbin      system/filessystem command          
/opt                    optional add-on application (not a part of OS apps)         
/proc                   running process (only exist in memory)          
/lib or /usr/lib        c programing library file need by commands and apps             
/tmp                    directory for temporary files           
/home                   directory for user                  
/var                    for system log              
/run                    system deamons that start very early(systemd and udev) story temporary runtime file like PID files              
/mnt                    to mount external systemfile         
/media                  for cdrom mounts 

#### Some Keywords
yum history (check history get id)                      
yum history undo <id> (back to old version of package)   
Network Time Protocal (chronyd)             
Central logger (rsyslog)                
OpenLDAP (slapd)    
Linux Web-base Administration (cockpit)         

Automate Linux Installation (kickstart)
yum install system-config-kickstart             

Firewall (firewalld)                
firewall-cmd --list-all                           
firewall-cmd --get-services                             
firewall-cmd --reload                     

Tune system Performance (tuned, nice, renice)                              
systemctl enable tuned                 
tuned-adm

Check disk issues (iostat, lsof)           
Check networking (tcpdump, netstat, ss, iftop, ethtool)              
Check system uptime (uptime)

Linux Boot Process
BIOS software       ==>         Basic Input/Output System executes MBR                                               
MBR                 ==>         Master Boot Record executes GRUB                                               
GRUB                ==>         Grand Unified Bootloader executes Kernel                                             
Kernel              ==>         Kernel executes /sbin/init                                                           
Init                ==>         Init executes runlevel programs                                                                        
Runlevel            ==>         Runlevel programs are executes from /etc/rc.d/rc*.d                                                                      

System run level (have 6 levels)            
0 Shutdown or halt the system               
1 Single-user mode; usually aliased as s or S               
6 Reboot the system    
2 Multiuser mode without networking        
3 Multiuser mode with networking                          
5 Multiuser mode with networking and GUI            
4 run level 4 is undefine or not used/User-definable      
(type: init level_id) 

SELinux (Security Enhanced Linux)  /etc/selinux/config  
getenforce                                  
sestatus        
getsebool
setsebool
journalctl
chcon           
semanage     

Processes and Jobs              
Application = Service               
Script              
Process                 
Daemon              
Threads                 
Job      

SSH without password                
Step 1: Genkey              
ssh-keygen -t rsa -b 4096                                 
Step 2: Copy the key (public key) to the server add to ~/.ssh/authorized_keys                                         
ssh-copy-id root@192.168.1.x                
Step 3: Restart service ssh                 
systemctl restart ssh               
Step 4: ssh to the server to check                      
ssh root@192.168.1.x                

<a name="template"></a>
##### Concept:  
###### Situation: 

###### Real combat:
###### Explain:  
###### Common options:

<a name="uname"></a>
##### Concept: uname command help displays the information about the system
###### Situation: 

###### Real combat:
Type: "uname [OPTION]"
Type: "uname -a" (Kernel name, network node hostname, kernel release date, kernel version, machine hardware name, hardware platform, operating system)      
###### Explain:  
###### Common options:
-s, --kernel-name: print the kernel name        
-n, --nodename: print the network node hostname     
-r, --kernel-release: print the kernel release      
-v, --kernel-version: print the kernel version      
-m, --machine: print the machine hardware name      
-p, --processor: print the processor type (non-portable)        
-i, --hardware-platform: print the hardware platform (non-portable)     
-o, --operating-system: print the operating system      

<a name="mkdir"></a>
##### Concept: mkdir command help create directory
###### Situation: 

###### Real combat:
Type: "mkdir abc" (create a directory called abc)    
Type: "mkdir abc bca afb" (create mutiple directory)    
Type: "mkdir -p /home/kali/test/abc" (create a directory called abc; if the parent folder does not exist, it will be created first)    
###### Explain:  
###### Common options:
-m, --mode=MODE: set file mode (as in chmod), not a=rwx - umask    
-p, --parents: no error if existing, make parent directories as needed, with their file modes unaffected by any -m option    
-v, --verbos: print a message for each created directory    

<a name="pwd"></a>
##### Concept: pwd stands for Print Working Directory
###### Situation: How you know where you at? using pwd command ($PWD)

###### Real combat:
Type: "pwd" (show current directory)    
Type: "pwd -L" (prints the logical path: default)    
Type: "pwd -P" (prints the physical path)    
###### Explain:  
###### Common options:
-L, --logical: use PWD from environment, even if it contains symlinks    
-P, --physical: avoid all symlinks    

<a name="cd"></a>
##### Concept: cd command to change directory
###### Situation: 

###### Real combat:
Type: "cd /home/kali/Desktops" (go to Desktops folder)    
###### Explain:  
###### Common options:

<a name="mv"></a>
##### Concept: move command using for move file/directory or rename file/directory
###### Situation: if you wanna move file to another location, or you just rename run mv command

###### Real combat:
Type: "move abc.txt cba.txt" (for rename)    
Type: "move cba.txt /home/kali" (try to move tho another location)    
###### Explain:  
###### Common options:
-f, --force: do not prompt before overwriting    
-i, --interactive: prompt before overwrite    
-n, --no-clobber: do not overwrite an existing file    

<a name="ls"></a>
##### Concept: ls command list out all file/folder of current directory
###### Situation: 

###### Real combat:
Type: "ls" (show file/folder at current directory)    
Type: "ls /home/kali" (show file/folder at /home/kali directory)    
Type: "ls -la" (show all hidden file)    
Type: "ls -lh" (show sizeof file/folder humman can read)    
###### Explain:  
###### Common options:
-a, --all: do not ignore entries starting with    
--block-size=SIZE: with -l, scale sizes by SIZE when printing them; e.g., '--block-size=M'; see SIZE format below    
-c: sort by ctime, newest first    
-t: sort by time, newest first; see --time    
-d, --directory: list directories themselves, not their contents    

<a name="cp"></a>
##### Concept: cp command for copy file/folder
###### Situation: 

###### Real combat:
Type: "cp abc.txt /home/kali/" (copy abc.txt file to /home/kali)    
Type: "cp -r ./abc /home/kali/" (copy folder abc to /home/kali)    
###### Explain:  
###### Common options:
-R, -r, --recursive: copy directories recursively    
-f, --force: if an existing destination file cannot be opened, remove it and try again    

<a name="touch"></a>
##### Concept: touch command is used to create files without any content
###### Situation: if you wanna create 100 file like file1.txt, file2.txt ...

###### Real combat:
Type: "for i in {1..10}; do touch "file${i}.txt"; done" (solved)    
Type: "touch file{1..10}.txt" (solved)(best way)    
Type: "printf "file%d.txt\n" {1..10} | xargs touch" (solved)   
####### Explain:
###### Common options:

<a name="cat"></a>
##### Concept: cat command help display content of file
###### Situation: When you wanna display content of file you can using cat

###### Real combat:
Type: "cat abc.txt" (display file abc.txt)  
Type: "cat abc.txt cba.txt" (display two file abc.txt  and cba.txt) 
###### Explain:  
###### Common options:
-n, --number: number all output lines  

<a name="tac"></a>
##### Concept: tac command like cat command but print files in reverse
###### Situation: 

###### Real combat: 
Type: "tac abc.txt"     
###### Explain: 
###### Common options:
-b, --before: attach the separator before instead of after          
-r, --regex: interpret the separator as a regular expression            
-s, --separator=STRING: use STRING as the separator instead of newline          

<a name="xxd"></a>
##### Concept: xxd command allows you to creates a hex dump of a given file or standard input
###### Situation: convert and revert hex dump to secure message :))

###### Real combat:
Type: "echo "hello" | xxd"          
Type: "xxd -p message.txt > hexdump"            
Type: "xxd -r -p hexdump > decryMessage.txt"           
###### Explain:  
###### Common options:
-b : Output in PostScript continuous hex dump style. Also known as plain hex dump style                      
-r : Reverse  operation hex to text                          

###### Situation: if you wanna remove something, try this comman
<a name="rm"></a>
##### Concept: rm stands for remove. Support remove file/folderd

###### Real combat:
Type: "rm abc.txt" (remove file abc.txt)    
Type: "rm -rf *.txt" (remove all txt file)  
Type: "rm -rf ./abc" (remove abc folder)    
###### Explain:  
###### Common options:
-r, -R, --recursive: remove directories and their contents recursively  
-f, --force: ignore nonexistent files and arguments, never prompt   
-i: prompt before every removal 
-d, --dir: remove empty directories 
-v, --verbose: explain what is being done   

<a name="top"></a>
##### Concept: top command help check what programs are running in my system like task manager in Window
###### Situation: 

###### Real combat:
Type: "top" 
###### Explain:  
###### Common options:

<a name="chown"></a>
##### Concept: chown command is used to change the file Owner or group
###### Situation: Whenever you want to change ownership, you can use chown command

###### Real combat:
Type: "chown michael abc.txt" (change file Owner of abc.txt file from another user to michael user) 
Type: "chown :group1 abc.txt" (the group1 group is assigned as the group of abc.txt)    
Type: "chown michael:group1 file1.txt" (change both owner and group)    
###### Explain:  
###### Common options:
-R, --recursive: change files and directories recursively   
-f, --silent, --quiet: suppress most error messages 
-v, --verbose: output a diagnostic for every file processed 
-c, --changes: like verbose but report only when a change is made   

<a name="chgrp"></a>
##### Concept: chgrp command in Linux is used to change the group ownership of a file or directory
###### Situation: 

###### Real combat:
Type: "chgrp michael abc.txt" (change abc.txt from another group to michael group)  
Type: "chgrp -R michael ./abc" (change group of abc folder and all items inside this folder to michael group)   
###### Explain:  
###### Common options:
-R, --recursive: operate on files and directories recursively   
-f, --silent, --quiet: suppress most error messages 
-v, --verbose: output a diagnostic for every file processed 
-c, --changes: like verbose but report only when a change is made   
--dereference: affect the referent of each symbolic link (this is the default), rather than the symbolic link itself    
-h, --no-dereference: affect symbolic links instead of any referenced file (useful only on systems that can change the ownership of a symlink)  

<a name="chmod"></a>
##### Concept: chmod command is used to change the access mode of a file (read(r) write(w) execute(x))
"+" Add permissions     
"-" Remove permissions      
"=" Set the permissions to the specified values      
"u" Owner       
"g" Group   
"o" Others      
"a" All     
"4" Read Permission     
"2" Write Permission     
"1" Execute Permission      
###### Situation: 

###### Real combat:
Type: "chmod u+rwx program" (read, write and execute permissions to the user owner of program)  
Type: "chmod go-w program" (remove write permission for the group and others)   
Type: "chmod u+rw,go+r program" (read and write for Owner, and Read-only for the group and other)   
Type: "chmod 674 program" (add rw for Owner, rwx for Group, and r for Other)    
###### Explain: first number for Owner, second number for Group and third number for Other
###### Common options:
-R, --recursive: change files and directories recursively   
-f, --silent, --quiet: suppress most error messages 
-v, --verbose: output a diagnostic for every file processed 
-c, --changes: like verbose but report only when a change is made   

<a name="ln"></a>
##### Concept: ln command is used to create links between files
###### Situation: like shortcut in window 

###### Real combat:
Type: "ln -s source.txt destination.txt" (soft link source.txt file to destination.txt; If one of the two changes both file changes)     
Type: "ln source.txt ./abc" (hard link a file to folder, source.txt will be copied to the abc directory, if source removed destination file still work nomally)              
###### Explain:
###### Common options:
-f, --force: remove existing destination files            
-i, --interactive: prompt whether to remove destinations        
-P, --physical: make hard links directly to symbolic links      
-s, --symbolic: make symbolic links instead of hard links       
-t, --target-directory=DIRECTORY: specify the DIRECTORY in which to create the links        
-T, --no-target-directory: treat LINK_NAME as a normal file always      
-v, --verbose: print name of each linked file       

<a name="wc"></a>
##### Concept: wc stands for word count. As the name implies, it is mainly used for counting purpose
###### Situation: 

###### Real combat:
Type: "echo "hello guys" | wc "       
Type: "wc abc.txt"      
Type: "wc -w abc.txt"           
Type: "wc -l abc.txt"      
Type: "wc -l abc.txt cba.txt"        
###### Explain:  
###### Common options:
-c, --bytes: print the byte counts          
-m, --chars: print the character counts     
-l, --lines: print the newline counts       
-w, --words: print the word counts   

<a name="which"></a>
##### Concept: which command in Linux is a command which is used to locate the executable file associated with the given command by searching it in the path environment variable. It has 3 return statuses as follows:                   
0 : If all specified commands are found and executable          
1 : If one or more specified commands is nonexistent or not executable          
2 : If an invalid option is specified           
###### Situation: 

###### Real combat:
Type: "which ln"            
Type: "which mv python"        
###### Explain:  
###### Common options:
-a: print all matching pathnames of each argument       

<a name="netcat"></a>
#### Concept: netcat command a command-line utility that allows users to read and write data over a network connection.
###### Situation: When you have a big file you wanna copy it to another pc but you do not have any usb or you can not setup ssh. You can use netcat

###### Real combat:
In pc receiver type: "netcat -l 1234 > bigfile.txt" 
In pc sender type: "cat bigfilesender.txt | netcat 192.168.0.10 1234 -q 0"  
###### Explain: 192.168.0.10 1234 is ip of destination pc (which will be receiver the data)
###### Common options: 
-l : is listen after this option is port number 
-c string:  specify shell commands to exec after connect    
-e filename: specify filename to exec after connect 
-q seconds: after EOF on stdin, wait the specified number of seconds and then quit. If seconds is negative, wait forever    

<a name="md5sum"></a>
##### Concept: The MD5 is one of the Message Digist algorithm that generates hash value to create checksum for the message
###### Situation: When you wanna download file from internet this page will provide for you a hash you need to use md5sum command to generate hash to compare after download

###### Real combat:
Copy provide hash (from website) to file call "hashcheck.txt"        
Type: "md5sum download.iso | awk '{print $1}' > hashduplecheck.txt"     
Type: "cmp hashcheck.txt hashduplecheck.txt"    
###### Explain: Assumtion file downloaded with name download.iso. Using awk for only print hash because output of md5sum look like (34d093385ec1abebd01e047159704bd7   download.iso)
###### Common options:
-b, --binary: read in binary mode   
-c, --check: read checksums from the FILEs and check them   

<a name="sha256sum"></a>
##### Concept: sha256sum command computes and checks a SHA256 encrypted message digest          
###### Situation: 

###### Real combat:
"sha256sum [OPTION]... [FILE]..."                    
Type: "sha256sum download.iso"          
###### Explain:  
###### Common options:
-b, --binary: read in binary mode           
-c, --check: read checksums from the FILEs and check them           
-t, --text: read in text mode (default)             

<a name="dd"></a>
##### Concept: dd is a command-line utility for Unix and Unix-like operating systems whose primary purpose is to convert and copy files (large file)
###### Situation: if you wanna to backup you disk you can use dd command

###### Real combat:
Type: "dd if=/dev/sda of=/dev/sdb" (copy of a hard disk to another hard disk connected to the same system)   
Type: "dd if=/dev/hda1 of=/home/kali/partition.img" (backup a Partition)         
Type: "dd if=/dev/hda of=/home/kali/hdadisk.img" (create an image of a Hard Disk)        
Type: "dd if=hdadisk.img of=/dev/hdb" (restore using the Hard Disk Image)       
Type: "dd if=/dev/cdrom of=tgsservice.iso bs=2048" (create CDROM Backup)        
###### Explain: 
"if" is input file      
"of" is output file      
###### Common options:
man dd (to see more)    

<a name="mktemp"></a>
##### Concept: mktemp command in Linux lets users create a temporary file or directory 
###### Situation: 

###### Real combat:
Type: "mktemp"      
Type: "mktemp -d" (create a temporary directory)    
Type: "mktemp tempfileXXX --suffix=HTF" (tempfilecVkHTF)   
###### Explain:  
###### Common options:
man mktemp (to see more)    

<a name="date"></a>
##### Concept: date command help display the system date and time
###### Situation: 

###### Real combat:
Type: "date"        
"date --date=" string ""        
Type: "date --date="2/02/2010""     
Type: "date --date="2 years ago""       
Type: "date --date="yesterday""   
Type: "date --date="1 year""        
"date +%[format-option]"        
Type: "date +"%D %T""       
Type: "date +"%Y-%m-%d""     
Type: "date +"%Y-%m-%d %H:%M:%S""    
###### Explain:  
%D: Display date as mm/dd/yy.              
%d: Display the day of the month (01 to 31).             
%a: Displays the abbreviated name for weekdays (Sun to Sat).        
%A: Displays full weekdays (Sunday to Saturday).        
%h: Displays abbreviated month name (Jan to Dec).       
%b: Displays abbreviated month name (Jan to Dec).       
%B: Displays full month name(January to December).      
%m: Displays the month of year (01 to 12).      
%y: Displays last two digits of the year(00 to 99).     
%Y: Display four-digit year.        
%T: Display the time in 24 hour format as HH:MM:SS.     
%H: Display the hour.       
%M: Display the minute.     
%S: Display the seconds.        
###### Common options:
-d, --date=STRING: display time described by STRING, not 'now'      
-u, --utc, --universal: print or set Coordinated Universal Time (UTC)       

<a name="df"></a>
##### Concept: df stands for disk free (fdisk, fsck)
###### Situation: how much space is available on a particular file system       

###### Real combat:
Type: "df -Th --total"  
Type: "df -Th /dev/sda /dev/sda1"        
###### Explain:  
###### Common options:
-a, --all: include pseudo, duplicate, inaccessible file systems     
-T, --print-type: print file system type        
-h, --human-readable: print sizes in powers of 1024         
--total: elide all entries insignificant to available space, and produce a grand total     

<a name="du"></a>
##### Concept: du command stands for disk usage.
###### Situation: if you want to check measures the disk space occupied by files or directories use du

###### Real combat:
Type: "du abc.txt cba.txt" (check files)        
Type: "du abc" (check folder)       
###### Explain:  
###### Common options:
-a, --all: write counts for all files, not just directories     
-c, --total: produce a grand total      
-h, --human-readable: print sizes in human readable format      

<a name="env"></a>
##### Concept: env is used to either print environment variables
###### Situation: 

###### Real combat:
"env -i your_command"       
Type: "env -i date" (run date command without provide evironment variable)      
"env -u variable_name" (unset variable name MY_VAR)     
Type: "export VARIABLE_NAME=value" (insert to env)      
Type: "env -u VARIABLE_NAME" (remove from env)      
###### Explain:  
###### Common options:
-i, --ignore-environment: start with an empty environment       
-u, --unset=NAME: remove variable from the environment      

<a name="type"></a>
##### Concept: type command is used to describe how its argument would be translated if used as commands. It is also used to find out whether it is built-in or external binary file
###### Situation: 

###### Real combat:
Type: "type -a pwd"     
Type: "type -t pwd"     
Type: "type -t cp"      
Type: "type -t while"       
Type: "type -t ls"         
Type: "type -p cp"      
###### Explain:
###### Common options:
-a: used to find out whether it is an alias, keyword or a function and it also displays the path of an executable, if available     
-t: will display a single word as an output     
-p: displays the name of the disk file   

<a name="id"></a>
##### Concept: id command in Linux is used to find out user and group names and numeric ID’s (UID or group ID) of the current user or any other user in the server. This command is useful to find out the following information as listed below:           
User name and real user id.         
Find out the specific Users UID.            
Show the UID and all groups associated with a user.         
List out all the groups a user belongs to.          
Display security context of the current user.           
###### Situation: 

###### Real combat:
Type: "id"      
Type: "id -u kali"  
Type: "id -r kali"              
###### Explain:  
###### Common options:
-g: print only the effective group id       
-G: print all Group ID’s        
-n: prints name instead of number       
-r: prints real ID instead of numbers       
-u: prints only the effective user ID       

<a name="sleep"></a>
##### Concept: sleep command is used to create a dummy job. A dummy job helps in delaying the execution. It takes time in seconds by default but a small suffix(s, m, h, d) can be added at the end to convert it into any other format
###### Situation: 

###### Real combat:
"sleep NUMBER[SUFFIX]"      
Type: "sleep 1s"
Type: "sleep 1m"
Type: "sleep 1h"
Type: "sleep 1d"
###### Explain:  
###### Common options:

<a name="users"></a>
##### Concept: users command in Linux system is used to show the user names of users currently logged in to the current host. It will display who is currently logged in according to FILE
###### Situation: check wall (chat to all user login in your system) and write (chat to particular user login) command

###### Real combat:
"users [OPTION]... [FILE]"
Type: "users /var/run/utmp" (utmp stands for "user")                   
Type: "users /var/log/wtmp" (wtmp stands for "who")             
Type: "users /var/log/btmp" (btmp stands for "bad")               
###### Explain:     
"utmp" will give you complete picture of users logins at which terminals, logouts, system events and current status of the system, system boot time         
"wtmp" gives historical data of utmp        
"btmp" records only failed login attempts       
###### Common options:

<a name="groups"></a>
##### Concept: groups is a powerful tool that helps administrators to view the group memberships of a user and retrieve information about user groups on a Linux System
###### Situation: 

###### Real combat:
"groups [options] [username]"
Type: "groups" (display groups of current user)         
Type: "groups kali" (display groups of kali user)        
###### Explain:  
###### Common options:

<a name="whoami"></a>
##### Concept: whoami display the name of the current user logged in
###### Situation: 

###### Real combat:
Type: "whoami"      
Type: "sudo -u kali whoami" (login with kali user and check whoami)     
###### Explain:  
###### Common options:

<a name="who"></a>
##### Concept: who command is used to find out the following information:
Time of last system boot.       
Current run level of the system.        
List of logged in users and more (how many user login in your system).       
###### Situation: 

###### Real combat:
"who [options] [filename]"
Type: "who"   
Type: "who -a" (display all details of current logged in user)          
Type: "who -u" (show list of users logged in to system)     
###### Explain:  
###### Common options:
-a, --all: same as -b -d --login -p -r -t -T -u         
-b, --boot: time of last system boot        
-d, --dead: print dead processes        
-p, --process: print active processes spawned by init    
-t, --time: print last system clock change           
-u, --users: list users logged in            

<a name="uptime"></a>
##### Concept: uptime command tell how long the system has been running
###### Situation: 

###### Real combat:
"uptime [options]"              
Type: "uptime -p"
Type: "uptime -s"
###### Explain:  
###### Common options:
-p, --pretty: show uptime in pretty format      
-s, --since: system up since, in yyyy-mm-dd HH:MM:SS format    

<a name="realpath"></a>
##### Concept: realpath find out the canonicalised absolute pathname for a given command or file
###### Situation: 

###### Real combat:
"realpath [OPTION]... FILE..."
###### Explain:  
###### Common options:
-e, --canonicalize-existing: all components of the path must exist      
-m, --canonicalize-missing: no path components need exist or be a directory         
-L, --logical: resolve '..' components before symlinks      
--relative-to=DIR: print the resolved path relative to DIR      
--relative-base=DIR: print absolute paths unless paths below DIR        
-s, --strip, --no-symlinks: don't expand symlinks       
-z, --zero: end each output line with NUL, not newline      

<a name="install"></a>
##### Concept: install command is used to copy files and set attributes. It is used to copy files to a destination of the user’s choice, If the user want to download and install a ready to use package on GNU/Linux system then he should use apt-get, apt, yum, etc depending on their distribution (this command often use in make file)
###### Situation: 

###### Real combat:
Type: "install abc.txt cba.txt /home/kali" (copy abc.txt and cba.txt to /home/kali)     
###### Explain:  
###### Common options:
--backup[=CONTROL]: make a backup of each existing destination file         
-b: like --backup but does not accept an argument           
-c: (ignored)
-C, --compare: compare content of source and destination files, and if no change to content, ownership, and permissions, do not modify the destination at all           
-d, --directory: treat all arguments as directory names; create all components of the specified directories             
-D: create all leading components of DEST except the last, or all components of --target-directory, then copy SOURCE to DEST            
-g, --group=GROUP: set group ownership, instead of process' current group           
-m, --mode=MODE: set permission mode (as in chmod), instead of rwxr-xr-x            
-o, --owner=OWNER: set ownership (super-user only)          
-t, --target-directory=DIRECTORY: copy all SOURCE arguments into DIRECTORY          
-T, --no-target-directory: treat DEST as a normal file          

<a name="mkfifo"></a>
##### Concept: mkfifo command creates FIFO special files specified by the File parameter, in the order specified
###### Situation: 

###### Real combat:
###### Explain:  
###### Common options:

<a name="mknod"></a>
##### Concept: mknod command makes a directory entry and corresponding i-node for a special file
###### Situation: 

###### Real combat:
###### Explain:  
###### Common options:
b: indicates the special file is a block-oriented device (disk, diskette, or tape)      
c: indicates the special file is a character-oriented device (other devices)        
p: creates FIFOs (named pipelines)          

<a name="dir"></a>
##### Concept: dir command differs from ls command in the format of listing contents that is in default listing options
###### Situation: 

###### Real combat:
"dir [OPTION] [FILE]"
Type: "dir -a" (displays all the hidden files)          
Type: "dir -l --author" (displays author of all the files)      
Type: "dir -F" 
###### Explain:  
For -F options:         
A slash (`/`) indicates a directory.            
An asterisk (`*`) indicates an executable.          
An at sign (`@`) indicates a symbolic link.         
A percent sign (`%`) indicates a whiteout.          
An equal sign (`=`) indicates a socket.         
A vertical bar (`|`) indicates a FIFO.          
###### Common options:
-a, --all:  do not ignore entries starting with .           
-l, --author: print the author of each file    
-d, --directory: list directories themselves, not their contents            
-F, --classify[=WHEN]: append indicator (one of */=>@|) to entries WHEN      
   
<a name="shred"></a>
##### Concept: When you delete a file from Linux or from any Operating System, then the file is not deleted permanently from the hard disk. When a file is deleted, it first gets moved to the trash and as soon as you clear off the trash the files get deleted for the file system. But the file is still there on your hard drive, and it could be recovered. When you delete a file permanently or delete it from the trash, the pointer pointing to the file leaves the address of it and the data of the file is sent to a sector in hard disk and is considered as unallocated space and it can be recovered easily. The file gets permanently deleted when the OS writes over the sector of the file which was considered as unallocated. So, in order to delete a file completely from a hard disk “shred” is used in Linux. This command overwrites the contents of a file multiple times, using patterns chosen to maximize the destruction of the residual data, making it harder for even very expensive hardware probing to recover it.  
###### Situation: remove content in file or delete file cannot be recovered.

###### Real combat:
"shred [OPTION] FILE"           
Type: "shred abc.txt"                  
Type: "shred -u filename.txt"       
###### Explain:  
###### Common options:
-n, --iterations=N: overwrite N times instead of the default (3)            
--random-source=FILE: get random bytes from FILE   
-u: deallocate and remove file after overwriting            
-f, --force: change permissions to allow writing if necessary           
-v, --verbose: show progress                   

<a name="rmdir"></a>
##### Concept: rmdir command is useful when you want to remove the empty directories from the filesystem in Linux
###### Situation: 

###### Real combat:
Type: "rmdir mydir1 mydir2 mydir3"
###### Explain:  
###### Common options:
-p, --parents: remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is similar to 'rmdir a/b/c a/b a'    
-v, --verbose: output a diagnostic for every directory processed            

<a name="sync"></a>
##### Concept: sync command in Linux is used to synchronize cached writes to persistent storage. If one or more files are specified, sync only them, or their containing file systems.
###### Situation: 

###### Real combat:
"sync [OPTION] [FILE]..."
Type: ""
###### Explain:  
###### Common options:
-d, --data: sync only file data, no unneeded metadata           
-f, --file-system: sync the file systems that contain the files    

<a name="shuf"></a>
##### Concept: shuf command in Linux writes a random permutation
###### Situation: 

###### Real combat:
"shuf [OPTION] [FILE]" (file shuf) 
Type: "shuf file.txt"                
"shuf -i LO-HI [OPTION]" (range shuf) 
Type: "shuf -i 1-10"                  
"shuf -e [OPTION]... [ARG]" (list shuf)   
Type: "shuf -e A B C D E"             
###### Explain:  
###### Common options:
-e, --echo: treat each ARG as an input line         
-i, --input-range=LO-HI: treat each number LO through HI as an input line               
-n, --head-count=COUNT: output at most COUNT lines              
-o, --output=FILE: write result to FILE instead of standard output          
-r, --repeat: output lines can be repeated  

<a name="arch"></a>
##### Concept: arch command is used to print the computer architecture. Arch command prints things such as “i386, i486, i586, alpha, arm, m68k, mips, sparc, x86_64, etc. (it look like uname command with -m option)
###### Situation: 

###### Real combat:
"arch [OPTION]"             
Type: "arch" = "uname -m"       
###### Explain:  
###### Common options:

<a name="fmt"></a>
##### Concept: fmt command in LINUX actually works as a formatter for simplifying and optimizing text files. Formatting of text files can also be done manually, but it can be really time-consuming when it comes to large text files
###### Situation: 

###### Real combat:
"fmt [-WIDTH] [OPTION]... [FILE]..."            
Type: "
###### Explain:  
###### Common options:
-t, --tagged-paragraph: indentation of first line different from second         
-s, --split-only: split long lines, but do not refill               
-u, --uniform-spacing: one space between words, two after sentences 

<a name="expand"></a>
##### Concept: expand command allows you to convert tabs into spaces in a file and when no file is specified it reads from standard input 
###### Situation: 

###### Real combat:
"expand [OPTION] FILE"
Type: "expand kt.txt > dv.txt"
###### Explain: 
###### Common options:
-i, --initial: do not convert tabs after non blanks             
-t, --tabs=N: have tabs N characters apart, not 8           
-t, --tabs=LIST: use comma separated list of tab positions.  The last specified position can be prefixed with '/' to specify a tab size to use after the last explic‐itly specified tab stop.  Also a prefix of '+' can be used to align remaining tab stops relative to the last specified tab stop instead of the first column                

<a name="unexpand"></a>
##### Concept: unexpand command convert blanks in each FILE to tabs, writing to standard output
###### Situation: 

###### Real combat:
"unexpand [OPTION]... [FILE]..."            
###### Explain:  
###### Common options:
-a, --all: convert all blanks, instead of just initial blanks           
--first-only: convert only leading sequences of blanks (overrides -a)           
-t, --tabs=N: have tabs N characters apart instead of 8 (enables -a)        

<a name="printf"></a>
##### Concept: printf command display the given string, number or any other format specifier. It works the same way as “printf” works in programming languages like C
###### Situation: 

###### Real combat:
"printf FORMAT [ARGUMENT]..."               
Type: "printf "First: %s, Second: %d, Third: %c, Four: %%" "Hi" 1 't'" (Output: First: Hi, Second: 1, Third: t, Four: %)        
###### Explain:  
###### Common options:

<a name="test"></a>
##### Concept: test command is a command that is used to test the validity of a command. It checks whether the command/expression is true or false (returns 0 as a successful, 1 is failed (check "echo $?))
###### Situation: 

###### Real combat:
"test [expression]" (test "variable1' operator "variable2")                 
Type: "test 20 -eq 1"
###### Explain:  
###### Common options:
Flags for files and directories:        
-e FILE: FILE exists            
-d FILE: FILE exists and is a directory         
-f FILE: FILE exists and is a regular file          
-r FILE: FILE exists and the user has read access           
-s FILE: FILE exists and has a size greater than zero           
-w FILE: FILE exists and the user has write access     
FILE1 -ef FILE2: FILE1 and FILE2 have the same device and inode numbers         
FILE1 -nt FILE2: FILE1 is newer (modification date) than FILE2          
FILE1 -ot FILE2: FILE1 is older than FILE2                       
Flags for  text strings:            
STRING1 = STRING2: the strings are equal            
STRING1 != STRING2: the strings are not equal  
-n STRING: the length of STRING is nonzero          
-z STRING: the length of STRING is zero   
Flags for comparison of numbers:                
INTEGER1 -eq INTEGER2: INTEGER1 is equal to INTEGER2            
INTEGER1 -ge INTEGER2: INTEGER1 is greater than or equal to INTEGER2            
INTEGER1 -gt INTEGER2: INTEGER1 is greater than INTEGER2            
INTEGER1 -le INTEGER2: INTEGER1 is less than or equal to INTEGER2           
INTEGER1 -lt INTEGER2: INTEGER1 is less than INTEGER2           
INTEGER1 -ne INTEGER2: INTEGER1 is not equal to INTEGER2        
Conditional flags:      
EXPRESSION1 -a EXPRESSION2: both EXPRESSION1 and EXPRESSION2 are true           
EXPRESSION1 -o EXPRESSION2: either EXPRESSION1 or EXPRESSION2 is true           
! EXPRESSION: EXPRESSION is false           
https://www.geeksforgeeks.org/shell-scripting-test-command/?ref=gcse            

<a name="tee"></a>
##### Concept: tee command reads the standard input and writes it to both the standard output and one or more files
###### Situation: You want to monitor th output and add thm to log file use tee command

###### Real combat:
"tee [OPTION]... [FILE]..."                 
Type: "./my-program | tee -a mylog.log"                 
Type: "wc -l file1.txt | tee -a file2.txt"        
###### Explain:  
###### Common options:
-a, --append: append to the given FILEs, do not overwrite               
-i, --ignore-interrupts: ignore interrupt signals           

<a name="nl"></a>
##### Concept: nl stands for numbering lines, accepting input either from a file or from STDIN. It copies each specified file to STDOUT, with line numbers appended before the lines.
###### Situation: 

###### Real combat:
"nl [OPTION]... [FILE]..."              
Type: "cat abc.txt | nl"            
Type: "nl -b a abc.txt"
###### Explain:  
###### Common options:
-b, --body-numbering=STYLE: use STYLE for numbering body lines          
-d, --section-delimiter=CC: use CC for logical page delimiters      
-f, --footer-numbering=STYLE: use STYLE for numbering footer lines          
-h, --header-numbering=STYLE: use STYLE for numbering header lines           
-n, --number-format=FORMAT: insert line numbers according to FORMAT       
STYLE is one of:            
a      number all lines         
t      number only nonempty lines           
n      number no lines              
pBRE   number only lines that contain a match for the basic regular expression, BRE         
FORMAT is one of:           
ln     left justified, no leading zeros         
rn     right justified, no leading zeros            
rz     right justified, leading zeros                   

<a name="stat"></a>
##### Concept: stat is a  command which gives information about the file and filesystem
###### Situation: 

###### Real combat:
"stat [OPTION]... FILE..."          
Type: "stat /etc/resolv.conf"   
Type: "stat abc.txt cba.txt"    
###### Explain:  
###### Common options:
-f, --file-system: display file system status instead of file status            
-c  --format=FORMAT: use the specified FORMAT instead of the default; output a newline after each use of FORMAT         
--printf=FORMAT: like --format, but interpret backslash escapes, and do not output a mandatory trailing newline; if you want a newline, include \n in FORMAT     

<a name="nohup"></a>
##### Concept: nohup command prevents the process from receiving this signal upon closing or exiting the terminal/shell
###### Situation: 

###### Real combat:
"nohup command [command-argument ...]"          
Type: "nohup ./myprogram arg1 arg2" (no exit terminal and open new terminal type "ps -a" now process of myprogram still working)        
Type: "nohup bash geekfile.sh > output.txt" (runs the command in the foreground and redirects the command output to the output.txt)             
Type: "nohup bash geekfile.sh &" (run a command in the background, type "fg" back to foreground)                
Type: "nohup bash -c 'cal && ls'" (run multiple commands)           
###### Explain:  
###### Common options:

<a name="base32"></a>
##### Concept: base32 command help encode or decode FILE, or standard input, to standard output
###### Situation: 

###### Real combat:
"base32 [OPTION]... [FILE]"             
Type: "echo "hello" | base32" (encode "hello")    
Type: "echo "NBSWY3DPBI======" | base32 -d" (decode)     
###### Explain:  
###### Common options:

<a name="truncate"></a>
##### Concept: truncate command is utilized to extend or shrink the size of the targeted file to a particular size
###### Situation: 

###### Real combat:
"truncate [Option] <Filename>"      
Type: "truncate -s 0 abc.txt" (remove content of file abc.txt)       
Type: "truncate -s +2k abc.txt" (extend the abc.txt file upto 2KB)             
###### Explain:  
###### Common options:
-c, --no-create: do not create any files            
-o, --io-blocks: treat SIZE as number of IO blocks instead of bytes             
-s, --size=SIZE: set or adjust the file size by SIZE bytes   

<a name="chroot"></a>
##### Concept: chroot command in Linux/Unix system is used to change the root directory. Every process/command in Linux/Unix like systems has a current working directory called root directory. It changes the root directory for currently running processes as well as its child processes 
###### Situation: "chroot" command can be very useful:
To create a test environment.           
To recover the system or password.              
To reinstall the bootloader.            

###### Real combat: 
Type: "mkdir test && cd $_ && mkdir bin lib lib64"                   
Type: "cp -v /bin/{bash, ls} bin/" (copy bash and ls from /bin to bin/)          
Type: "ldd /bin/bash /bin/ls" (check lib dependencies of bash and ls command)   
Type: "cp -v /lib/x86_64-linux-gnu/{libtinfo.so.6, libc.so.6, libselinux.so.1, libc.so.6, libpcre2-8.so.0} lib/" (copy dependencies to lib/)             
Type: "chroot /root/kali/test"              
==> From test directory we can execute bash command and ls command          
###### Explain:  
###### Common options:
--groups=G_LIST: specify supplementary groups as g1,g2,..,gN            
--userspec=USER:GROUP: specify user and group (ID or name) to use           
--skip-chdir: do not change working directory to '/'        

<a name="nproc"></a>
##### Concept: nproc command which is used to print the number of processing units available in the system or to the current process
###### Situation: 

###### Real combat:
Type: "nproc --all"    
Type: "cat /proc/cpuinfo | grep "model name""               
###### Explain:  
###### Common options:
--all: print the number of installed processors             
--ignore=N: if possible, exclude N processing units             

<a name="tr"></a>
##### Concept: tr command is a UNIX command-line utility for translating or deleting characters. It supports a range of transformations including uppercase to lowercase, squeezing repeating characters, deleting specific characters, and basic find and replace. It can be used with UNIX pipes to support more complex translation. tr stands for translate
###### Situation: 

###### Real combat:
"tr [OPTION]... STRING1 [STRING2]"
Type: "cat abc.txt | tr 'a' 'A'" (replace a character to A)                            
Type: "cat abc.txt | tr [a-z] [A-Z]" or "cat abc.txt | tr [:lower:] [:upper:]" (convert lower case characters to upper case)            
Type: "echo "Welcome    To    GeeksforGeeks" | tr -s " "" (replace each sequence of a repeated space)                   
Type: "echo "Welcome To GeeksforGeeks" | tr -d W" (delete W character) 
Type: "echo "my ID is 73535" | tr -cd [:digit:]" (remove all characters except digits)                                 
###### Explain:  
###### Common options:
-c, -C, --complement: use the complement of ARRAY1              
-d, --delete: delete characters in ARRAY1, do not translate         
-s, --squeeze-repeats: replace each sequence of a repeated character that is listed in the last specified ARRAY, with a single occurrence of that character             

<a name="comm"></a>
##### Concept: comm compare two sorted files line by line and write to standard output; the lines that are common and the lines that are unique 
###### Situation: 

###### Real combat:
###### Explain:  
###### Common options:
-1: suppress column 1 (lines unique to FILE1)           
-2: suppress column 2 (lines unique to FILE2)           
-3: suppress column 3 (lines that appear in both files)         
--check-order: check that the input is correctly sorted, even if all input lines are pairable           
--nocheck-order: do not check that the input is correctly sorted            
--output-delimiter=STR: separate columns with STR           
--total: output a summary       
-z, --zero-terminated: line delimiter is NUL, not newline  

<a name="taskset"></a>
##### Concept: taskset command help set number cpu to execute the task pid          
###### Situation:           

###### Real combat:
"taskset [options] mask command [argument...]"          
"taskset [options] -p [mask] pid"
Type: taskset -p 734967 (check cpu to allow execute the program with pid 734967)
Output: pid 734967's current affinity mask: 3f (3f = 3 f = 0011 1111 = allow cpu 0,1,2,3,4,5) (1f = 1 f = 0001 1111 = allow cpu 0,1,2,3,4)          
Type: taskset -cp 0,2 734967 (assign cpu 0 and cpu 2 for task with pid 734967)        
Type: taskset -cp 0-2 734967 (assign cpu 0,1,2 for task with pid 734967)          
###### Explain:  
###### Common options:
-a, --all-tasks: Set or retrieve the CPU affinity of all the tasks (threads) for a given PID.
-c, --cpu-list: Interpret mask as numerical list of processors instead of a bitmask. Numbers are separated by commas and may include ranges. For example: 0,5,8-11.
-p, --pid: Operate on an existing PID and do not launch a new task.

<a name="cut"></a>
##### Concept: cut command help filter text
###### Situation: 

###### Real combat:
"cut OPTION... [FILE]..."
Type: cut -c1 abc.txt (get fist character of each line)      
Type: cut -c1,3,5 abc.txt (get character at fist, three, five of each line)         
Type: cut -c1-5 abc.txt (get from fist to five characters of each line)     
Type: cut -d: -f5 abc.txt  (select field number five)             
###### Explain:  
###### Common options:
-c, --characters=LIST: select only these characters             
-d, --delimiter=DELIM: use DELIM instead of TAB for field delimiter        

<a name="setfacl"></a>
##### Concept: setfacl and getfacl provides an addtional, more flexible permission mechanism for file system. It's designed to assist with UNIX file permission. ACL (Access Control List) allow you to give permissions for any user or group to any disc resource.
###### Situation: 

###### Real combat:
"setfacl -m u:kali:rwx /path/to/file" (add read write execute for user kali)                         
"setfacl -m g:groupkali:rx /path/to/file" (add read execute for group kali)                        
"setfacl -dm "entry" /path/to/dir" (allow all files or directory to inherit ACL)                               
"setfacl -Rm "entry" /path/to/dir" (recursive inherit ACL)                                             
"setfacl -b /path/to/file" (remove all entries)                                            
"getfacl /path/to/file" (get ACL)                                                       
###### Explain:  
###### Common options:
-b, --remove-all: Remove all extended ACL entries. The base ACL entries of the owner, group and others are retained             
-d, --default: All operations apply to the Default ACL. Regular ACL entries in the input set are promoted to Default ACL entries. Default ACL entries in the input set are discarded        
-R, --recursive: Apply operations to all files and directories recursively          

<a name="awk"></a>
##### Concept: awk help extrac data (extract fields from a file or from an output)           
###### Situation: 

###### Real combat:
"awk '{print $1}' abc.txt (List first field from abc.txt file)          
"awk '/Jerry/{print}' abc.txt (Search for a specific word)                    
"awk -F: '{print $1}' /etc/passwd (ouput first field of /etc/passwd file)                                   
"echo "Hello Tom" | awk '{$2="Adam"; print $0}' (replace Tom by Adam and print out)                 
"awk 'length($0) > 15' abc.txt  (filter line in abc.txt have len more than 15 characters)                                                 
"ls -l | awk '{if($9 == "abc.txt") print $0}'  (filter by string abc)                                                                
###### Explain:  
###### Common options:

<a name="grep"></a>
##### Concept:  grep command for filter string
###### Situation: can be using grep command to find a text in a folder

###### Real combat:
"grep keyword path/to/file"             
"grep -c keyword path/to/file" (count matched line)                             
"grep -i keyword path/to/file" (ignore-case)               
"grep -n keyword path/to/file" (display the matched line and their line numbers)   
"grep -r "text find" /path/to/folder" (find text in folder)                                     
###### Explain:  
###### Common options:
-E, --extended-regexp: Interpret PATTERNS as extended regular expressions               
-i, --ignore-case: Ignore case distinctions in patterns and input data, so that characters that differ only in case match each other                
-c, --count: Suppress normal output; instead print a count of matching lines for each input file                
-r, --recursive: Read  all  files  under  each  directory, recursively                

<a name="sort"></a>
##### Concept: sort in alphabetical order
###### Situation: 

###### Real combat:
"sort [OPTION]... [FILE]..."
"sort -r abc.txt" (sort with reverse)  
"sort -k2 abc.txt" (sort by field number two)               

###### Explain:  
###### Common options:
-r, --reverse: reverse the result of comparisons
-k, --key=KEYDEF: sort via a key; KEYDEF gives location and type                

<a name="uniq"></a>
##### Concept: uniq filters out the repeated or duplicate line
###### Situation: 

###### Real combat:
"cat abc.txt | sort | uniq -c"  (print number display of each line)
"cat abc.txt | sort | uniq -d"  (only print duplicate line)             
###### Explain:  
###### Common options:
-c, --count: prefix lines by the number of occurrences              
-d, --repeated: only print duplicate lines, one for each group              

<a name="split"></a>
##### Concept: split command help seperate a file to many file
###### Situation: 

###### Real combat:
"split [OPTION]... [FILE [PREFIX]]"             
"split -l 10 file.txt seperate" (split file.txt into 10 lines to seperateaa, seperateab, seperateac, ...)                   
###### Explain:  
###### Common options:
-l, --lines=NUMBER: put NUMBER lines/records per output file        

<a name="sed"></a>
##### Concept: replace a string in a file with new string, find and delete a line, remove empty line, remove fisrt or n lines in a file, replace tabs with spaces, show defined lines from a file, substitute within vi editor.           
###### Situation: 

###### Real combat:
"sed [OPTION]... {script-only-if-no-other-script} [input-file]..."              
"sed 's/Tam/Michael/g' abc.txt" (find in abc.txt replace Tam by Michael)            
"sed -i 's/Tam/Michael/g' abc.txt" (find in abc.txt replace Tam by Michael also modify abc.txt)                  
"sed '/Tam/d' abc.txt" (find in abc.txt delete all line containt Tam)                  
"sed '/^$/d' abc.txt" (find in abc.txt delete empty line)                  
"sed '1d' abc.txt" (delete first line)                  
"sed '1,2d' abc.txt" (delete first line and second line)                  
"sed 's/\t/ /g' abc.txt" (find in abc.txt replace tabs by space)            
###### Explain:  
###### Common options:
-i: edit content in file            

<a name="chage"></a>
##### Concept: The chage command changes the number of days between password changes and the date of the last password change. This information is used by the system to determine when a user must change their password.
###### Situation: 

###### Real combat:
"chage -m 5 -M 90 -W 10 -I 3 -E kali"
###### Explain:  
###### Common options:
-d, --lastday LAST_DAY: Set the number of days since January 1st, 1970 when the password was last changed           
-m, --mindays MIN_DAYS:  Set the minimum number of days between password changes to MIN_DAYS                
-M, --maxdays MAX_DAYS: Set the maximum number of days during which a password is valid. When MAX_DAYS plus LAST_DAY is less than the current day, the user will be required to change their password before being able to use their account This occurrence can be planned for in advance by use of the -W option, which provides the user with advance warning.        
-W, --warndays WARN_DAYS: Set the number of days of warning before a password change is required                
-I, --inactive INACTIVE: Set the number of days of inactivity after a password has expired before the account is locked         
-E, --expiredate EXPIRE_DATE: Set the date or number of days since January 1, 1970 on which the user's account will no longer be accessible    

<a name="systemctl"></a>
##### Concept: systemctl command is a tool to control system services
###### Situation: 

###### Real combat:
"systemctl start|stop|status servicename.service"
"systemctl list-units --all" (list all service in linux)            
"systemctl reboot"
"systemctl poweroff"
"systemctl halt"
###### Explain:  
###### Common options:

<a name="kill"></a>
##### Concept: kill process
###### Situation: 

###### Real combat:
"kill -l"  (list all signal names)                      
"kill PID"  (kill with process id)                       
"kill -1 PID"  (restart)                          
"kill -2 PID"  (like Ctrl + c)                       
"kill -9 PID"  (forcefully kill the process)                                  
"kill -15 PID"  (kill a process gracefully)                                                 
"killall processname"  (kill with process name)                                    
"pkill processname"  (kill with process name)                                      
###### Explain:  
###### Common options:
-l, --list: List signal names

<a name="traceroute"></a>
##### Concept: The traceroute command is a network diagnostic tool used to display the route and measure the transit delays of packets across an Internet Protocol (IP) network. It's commonly used to identify network issues and find out the path that packets take from the source to the destination.
###### Situation: 

###### Real combat:
"traceroute google.com"             
###### Explain:  
###### Common options:

<a name="nice"></a>
##### Concept: the nice command is typically used to lauch processes with lower or higher priority, effecting their shceduling in the system can be set at 40 different levels
-20 (highest priority) to 19 (lowest priority)
###### Situation: 

###### Real combat:
nice -n -15 top (set the top command to nice level -15)             
renice -n 12 PID (modify process priority of top command to 12)             
###### Explain:  
###### Common options:

<a name="umask"></a>
##### Concept: umask is a command to set default permission of any newly create file/directory
###### Situation: 

###### Real combat:
umask u+rw,g+r,o-rwx (any newly create file/directory will set rw for user owner, r for group and other user don't have rwx)            
###### Explain:  
###### Common options:

<a name="pmap"></a>
##### Concept: the pmap command in Linux used to display the memory map of a process or a set of processes. Provides detailed about the memory usage of a process, include the addresses, permission, and sizes of memory regions. 
###### Situation: 

###### Real combat:
"pmap [options] [pid]"
###### Explain:  
###### Common options:
-x, --extended: Show the extended format                