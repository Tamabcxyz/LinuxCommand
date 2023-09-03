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
- [dd](#dd)
- [mktemp](#mktemp)
- [date](#date)
- [df](#df)
- [du](#du)

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

<a name="rm"></a>
##### Concept: rm stands for remove. Support remove file/folder
###### Situation: if you wanna remove something, try this command

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
Type: "ln -s source.txt destination.txt" (link source.txt file to destination.txt; If one of the two changes both file changes)     
Type: "ln source.txt ./abc" (link a file to folder, source.txt will be copied to the abc directory)     
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

<a name="dd"></a>
##### Concept: dd is a command-line utility for Unix and Unix-like operating systems whose primary purpose is to convert and copy files (large file)
###### Situation: if you wanna to backup you disk you can use dd command

###### Real combat:
Type: "dd if=/dev/sda of=/dev/sdb" (copy of a hard disk to another hard disk connected to the same system)   
Type: "dd if=/dev/hda1 of=~/partition.img" (backup a Partition)         
Type: "dd if=/dev/hda of=~/hdadisk.img" (create an image of a Hard Disk)        
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
##### Concept: df stands for disk free
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
