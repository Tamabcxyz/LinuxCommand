# Table of Contents
- [template](#template)
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
- [netcat](#netcat)
- [md5sum](#md5sum)


<a name="template"></a>
##### Concept:  
###### Situation: 

###### Real combat:
###### Explain:  
###### Common options:

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
