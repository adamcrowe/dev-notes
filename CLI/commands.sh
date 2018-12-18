CTRL-a  										# move to the beginning of the line
CTRL-e											# move to the end of the line
CTRL-u 											# clear the line (before the cursor position)
CTRL-w 											# delete the word before the cursor position

history											# shows history of typed commands
history | grep apple  							# find commands in history containing `apple`
history | tail        							# print the last 10 lines of history of the current session
tail ~/.bash_history							# print the last 10 lines of history of the previous session

# in .bash_profile								# append history to history file as you type in commands (for all open shells)
shopt -s histappend								# shopt = shell option
export PROMPT_COMMAND='history -a'
echo > ~/.bash_history							# trash history

# in .bash_profile (or alias file)
# notes append alias
alias n="history | tail -2 | head -1 | tr -s ' ' | cut -d' ' -f3- | awk '{print \"# \"\$0}' >> notes"
# The -s flag in tr stands for squeeze-repeats and the point of this is that there can be a varying number of space characters in the whitespace. 
# Since we're going to cut on space as the delimiter, we have to make sure this doesn't trip us up.  With this out of the way, we simply cut on 
# space and use awk to put a pound sign in front of the command, so it's read as a comment.
./long_hard-to-remember_command --with_lots --of_flags > poorly_named_file
n												# saves command in notes file in cwd

# Piping
cat file.txt | sort | less 						# only the stdout stream gets passed through the pipeline; the stderr hits the screen right away
cat -n file.txt | head -37 | tail -1  			# print row 37
cat -n file.txt | awk 'NR==37'        			# print row 37 (NR = row number)
cat file.txt | cut -f2 | sort -u | wc -l  		# print the number (wc -l) of unique elements (-u) in the second column (cut -f2) of a file 
head -1 file.txt | tr "\t" "\n" | nl -b a  		# number the fields in a tab-delimited header and display them as a column
bind -P | grep history-search-backward   		# find the key-binding for history-search-backward
cat file.txt | awk '$1==1' | cut -f2-4    		# display columns 2 through 4 (cut -f2-4) of a file for rows such that the first column equals 1
history | grep "|" | less  						# find all the commands in your history with pipes ("|")
len=$( cat file.txt | wc -l )					# store length of file (wc -l = word count -lines) in a variable

# Command Substitution							# run a command on the fly and use its output as an argument for another command or store it in a variable
d=$( pwd )										# store cwd in a variable
d=$( dirname $( readlink -m $0 ) )				# save scripts directory in the variable d (readlink gets absolute path of script ($0))
for i in $( cat file.txt | cut -f3 | sort -u ); # loop through and echo all unique elements of the third column of file.txt
do echo $i; 
done

for i in $( ls *.txt | grep -v apple ); 		# loop through all .txt files in the cwd that do not contain the word apple	
do echo $i; 
done

touch {1..3}.txt								# create three files		
for i in {1..3}.txt; 
do j=$( echo $i | sed 's|\.txt|\.html|' );  	# change file extension
cmd="mv $i $j"; 								# create cmd and save it
echo "Run command: $cmd"; 						# echo cmd to user
echo $cmd | bash; 								# run cmd
done

for i in 
	$( echo $PATH | tr ":" "\n" | head -3 ); 	# For the first three directories in our PATH, show how many things are in each and how big each is
do echo "*** "$i" ***"; 
echo "This folder has "$( ls $i | wc -l )" elements and is "$( du -sh $i | cut -f1 )" large"; 
echo; 
done
# output:
*** /usr/local/sbin ***
This folder has 0 elements and is 4.0K large

*** /usr/local/bin ***
This folder has 7 elements and is 32K large

*** /usr/sbin ***
This folder has 130 elements and is 8.6M large

# Process Substitution
# > ... process substitution is a form of inter-process communication that allows the input or output of a command to appear as a file. The command is substituted in-line, where a file name would normally occur, by the command shell. This allows programs that normally only accept files to directly read from or write to another program. -- Wikipedia



pwd 											# print current working directory (cwd)
cd - 											# go to previous dir
cd 												# go to user home dir
cd ~											# go to user home dir
cd /											# go to root directory
df 												# reports available disk space

echo "hello world!" - > file1.txt				# create/overwrite file

mkdir -p a/b/c  								# make nested directories (and -p don't complain if directory already exists)
rmdir dir1										# delete empty directory

rm file1										# delete file
rm -r dir1   									# delete directory and contents
rm -R dir1										# delete directory and contents (-R force recursion)
rm -rf dir1 									# force dleete of a file or directory (i.e., ignore warnings)
rm -rf </path/to/dir1>							# delete directory and contents
rm -rf </path/to/dir1/*>						# delete contents of directory only
rm -P file  									# deletes file securely by first overwriting file contents
shred -zuv file									# deletes file securely by first overwriting file contents (flags are: zero, remove, verbose)

cp file1.sql /httpdocs 							# copy myfile from cwd to another dir 
scp file1.sql /httpdocs 						# secure copy file from cwd to another dir 
cp file1 file2 									# copy file1 to file2
cp -R dir1 dir2 								# copy directories plus files recursively
cp -R dir1 ../../								# make a copy of dir1 into the dir two levels up from our cwd

mv file1 dir1/dir2								# move file1 into dir1/dir2/ (or, rename ./file1 as ./dir1/dir2/file1)
mv dir1 dir2 									# (if dir2 exists...) move dir1 into dir2
mv dir1 dir2 									# (if dir2 does not exist...) rename dir1 to dir2
mv -n file1 dir2 								# (if file1 exists in dir2 exists...) do not move (-n) file1
mv file1 ~/Desktop 								# move file1 to Desktop
mv -R dir1 ~/Desktop							# move dir1 (and its contents, recursively) to Desktop
mv file1 dir1/dir2/file2						# move file1 into dir1/dir2/ and rename it to file2
mv a a.1										# step 1: Swap the names of two files, a and b
mv b a											# step 2: Swap the names of two files, a and b
mv a.1 b										# step 3: Swap the names of two files, a and b
mv file1.txt file1.html							# change the extension of file1.txt from .txt to .html
mv file1.{txt,html}								# change the extension of file1.txt from .txt to .html

ls 												# list contents of cwd
ls -l 											# lists your files in long format
ls -al											# lists all files (-a) including those begining with a dot
ls -la											# lists all files (-a) including those begining with a dot
ls -l -a										# lists all files (-a) including those begining with a dot
ls -a -l										# lists all files (-a) including those begining with a dot
ls /dir 										# list files in dir
ls -R 											# list recursively
ls -hl  										# long form, human readable
ls -hlt 										# long form, human readable, sorted by time
ls *.txt 										# list any file that has the .txt file extension
ls . dir1 .. dir2/*.txt dir3/A*.html			# list anything in the cwd; anything in dir1; anything in the dir one above; anything in dir2 that ends with .txt; 
												# and anything in dir3 that starts with A and ends with .html.
$ for i in $( ls /some/path/*.txt ); 			# print any file in /some/path that has the .txt file extension
do echo $i; done
$ for i in /some/path/*.txt; 					# print any file in /some/path that has the .txt file extension
do echo $i; done

$ find . -name "*.txt"							# list all text files in the cwd and below (i.e., including child directories)

TAB												# auto-complete
UP ARROW										# show previously executed commands
CTRL-c 											# kill script/process/abort mission
CTRL-a 											# jump cursor to beginning of line
CTRL-e 											# jump cursor to end of line
CTRL-k 											# delete to end of line
CTRL-u 											# delete to beginning of line
CTRL-w 											# delete back one word
CTRL-y 											# paste (yank) what was deleted with the above shortcuts
CTRL-r 											# reverse-search history for a given word
CTRL-z 											# suspend the process running in the foreground
CTRL-l 											# clear screen (works in the Python, MySQL, and other shells)
CTRL-d 											# end of transmission (synonymous with quit - e.g., exiting the Python or MySQL shells)
CTRL-s 											# freeze screen
CTRL-q 											# un-freeze screen

sudo 											# superuser powers for single command

echo -n "test"            						# suppress newline
echo -e "test\ttest\ntest"  					# -e interpret special chars ( \t is tab, \n newline )
echo "test" > readme.txt						# create readme.txt with "test" as content

cmd="ls -hl"; 								
echo $cmd; 
echo $cmd | bash								# retrace your steps by echoing a command before execute it using a pipe into bash

cat file.txt									# prints the contents of file.txt
cat file.txt file2.txt							# prints the contents of both file.txt and file2.txt concatenated together
cat -n file.txt      							# prints the contents of file.txt with line numbers
cat file.txt | wc -l							# count the number of lines in a file
cat file.txt | cut -f1							# cut the first column
cat file.txt | awk ...							# awk will process what cat pipes out in a linewise fashion 
echo "hello world" | cat						# if you route something to cat via a pipe, it just passes through
zcat file.txt.gz 								# zcat cats zipped files
tac file.txt									# see file.txt in reverse order

echo joe > file.txt 							# save to file
cat file.txt
joe

echo joe >> junk.txt  							# append to already-existing file
cat junk.txt
joe
joe

head file1.txt     	 							# print the first 10 lines of file1 (10 by default)
head -1 file1.txt  	 							# print the first line of file1
head -50 file1.txt 	 							# print the first 50 lines of file1
tail file1.txt     	 							# print the last 10 lines of file1 (10 by default)
tail -1 file1.txt  	 							# print the last line of file1
tail -50 file1.txt 	 							# print the last 50 lines of file1
cat -n file1.txt | head -37 | tail -1  			# print row 37 of file1
history | tail        							# print the last 10 lines of history
ls | head										# print the first 10 elements in the cwd (10 by default)
head -2 file1.txt file2.txt 					# print the file name and first 2 lines of both file1 and file2 
head *											# print the first 10 elements of all files in the cwd (10 by default)

a=3
echo a											# a
echo $a											# 3
a=test	       
echo $a											# test
a="test test"  
echo $a											# test test
a=3; b=4
echo $a $b										# 3 4
echo $a$b         								# 34
echo "$a$b"      								# 34
echo -e "$a\t$b"  								# 3	4 (-e flag tells echo to interpret \t as a tab)
var=5
joe=hello $var									# bash: 5: command not found
joe="hello $var"
echo $joe										# hello 5
joe='hello $var'
echo $joe										# hello $var
d=dir1/dir2/dir3
ls $d
cd $d
d=..     										# d = the directory one above
cd $d/.. 										# cd two directories up (cd ../../)
a=3
echo $a											# 3
echo \$a										# $a (use escape to prevent use of $a as a variable)
echo "\$a"  									# $a (use quotes to prevent use of $a as a variable)
echo \\\$a  									# \$a (escape the escape and the use of $a as a variable)
a=3
echo $a											# 3
echo $apple										# (variable apple is not set)
echo ${a}pple									# 3pple (the variable $a plus the string "pple")

streams:
stdin (standard in)
stdout (standard out)
stderr (standard error)
./myscript.sh > out.txt 2> err.txt  			# save the output into out.txt and the error into err.txt
1> o.txt										# save stdout to o.txt (> also works)
2> e.txt 										# save stderr to e.txt
&1   											# is the standard out stream
&2   											# is the standard error stream

#!/bin/bash
echo "hello kitty"								# echo "hello kitty" to stdout
echo "hello kitty" > somefile.txt				# echo "hello kitty" to the file somefile.txt
echo "hello kitty" > &1							# echo "hello kitty" to stdout
echo "hello kitty" > &2							# echo "hello kitty" to sterr
echo "hello kitty" > 1							# echo "hello kitty" to the file named 1

#!/bin/bash
a=joe											
if [ $a == "joe" ]; then echo hello; fi		# if then conditional logic
hello

#!/bin/bash
a=joe
if [ $a == "joe" ]; then 						# if/elseif/else then conditional logic
    echo hello; 
elif [ $a == "doe" ]; then 
    echo goodbye; 
else 
    echo "ni hao"; 
fi

#!/bin/bash
case $rental in									# case statement
   "car") echo "For $rental rental is...";;
   "van") echo "For $rental rental is...";;
   "jeep") echo "For $rental rental is...";;
   "cycle") echo "For $rental rental is...";;
   "plane") echo "For $rental rental is..";;
   *) echo "Sorry, I can not get a $rental";;
esac

touch emptyfile          						# create an empty file
echo joe > nonemptyfile  						# create a non-empty file

file=emptyfile                    
if [ -e $file ]; then echo "exists";       		# The operator -e tests for existence 
	if [ -s $file ]; then echo "non-0"; 		# The operator -s tests for non-zero-ness
	fi; 
fi
exists											# result output

file=nonemptyfile 
if [ -e $file ]; then echo "exists"; 			# The operator -e tests for existence
	if [ -s $file ]; then echo "non-0"; 		# The operator -s tests for non-zero-ness
	fi; 
fi
exists											# result output
non-0											# result output

echo joe										
joe
echo $?  										# query exit code of previous command
0												# 0 = success code

cat test_exitcode.sh 							# create script with sleep command
#!/bin/bash
sleep 10

./test_exitcode.sh; 							# run without interruption
echo $?
0												# success

./test_exitcode.sh;  							# run with interruption
^C
echo $?
130												# 130 = fail code

./test_exitcode.sh 								# run without interruption
if [ $? == 0 ]; 
	then echo "program succeeded"; 
	else echo "program failed"; 
fi
program succeeded

./test_exitcode.sh; 							# run with interruption
^C
if [ $? == 0 ]; 
	then echo "program succeeded"; 
	else echo "program failed"; 
fi
program failed

#!/bin/bash
outputdir=nonexistentdir  						# set output dir equal to a nonexistent directory
if ! cd $outputdir; 
	then echo "couldnt cd into output dir"; 
fi
-bash: pushd: nonexistentdir: No such file or directory
couldnt cd into output dir

#!/bin/bash
mkdir existentdir  								# make a test directory
outputdir=existentdir
if ! cd $outputdir; 
	then echo "couldnt cd into output dir"; 
fi
# no error - now we're in existentdir

for i in 1 2 3 hello; do echo $i; done			# basic for loop
1
2
3
hello

for i in {1..10}; do echo -n "$i "; done		# loop and suppress new line
1 2 3 4 5 6 7 8 9 10 

echo {1..10}									# loop range

x=1; 
while ((x <= 3)); 								# basic while loop
	do echo $x; 
	((x++));
	done
1
2
3

cat junk.txt 									# create file
1
2
3

while read x;									# iterate over file (read each line of x)
	do echo $x; 
	done < junk.txt
1
2
3

#!/bin/bash
# hellokitty.sh
echo $0											# echo the name of the script
echo hello $1 $4								# echo `hello` and the first and fourth args
./hellokitty.sh my sweet kitty cat				# run hellokitty.sh with four args: my sweet kitty cat
./hellokitty.sh									# output
hello my cat 									# output	


#!/bin/bash
helpmessage="This script showcases how to read arguments"

### get arguments
while (($# > 0)); do													# while input array ($) size ($#) is greater than zero
    if [ "$1" == "-h" -o "$1" == "-help" -o "$1" == "--help" ]; then	# -o is logical OR
        shift; 															# shift deletes item from args array 
        echo "$helpmessage"
        exit;															# exit script
    elif [ "$1" == "-f1" -o "$1" == "--flag1" ]; then
        shift; var1=$1; shift											# store what's passed via flag1 in var1
    elif [ "$1" == "-f2" -o "$1" == "--flag2" ]; then					
        shift; var2=$1; shift											# store what's passed via flag2 in var2
    elif [ "$1" == "-f3" -o "$1" == "--flag3" ]; then
        shift; var3=$1; shift											# store what's passed via flag2 in var3
    else    															# if unknown argument, just shift
        shift
    fi
done

### main
# echo variable if not empty 
if [ ! -z $var1 ]; then echo "flag1 passed "$var1; fi					# -z is empty check
if [ ! -z $var2 ]; then echo "flag2 passed "$var2; fi
if [ ! -z $var3 ]; then echo "flag3 passed "$var3; fi

./test_args --flag1 x -f2 y --flag3 zzz									# run script with flags and args
flag1 passed x															# output
flag2 passed y															# output
flag3 passed zzz														# output

./test_args --flag3 x --flag1 zzz										# flags can be passed in any order
flag1 passed zzz
flag3 passed x

cat ./test_src.sh 
#!/bin/bash
myvariable=54
echo $myvariable

source ./test_src.sh 							# run ./test_src.sh and persist the return value										
54
echo $myvariable								# echo persisted variable after script has run
54
. ./test_src.sh  								# . is shorthand for source
54

cat ./test_src.sh 
#!/bin/bash
export myvariable=54  							# export this variable to make it available to other scripts
echo $myvariable

cat ./test_src_2.sh 							# another script (test_src_2.sh) wants to use $myvariable
#!/bin/bash
echo $myvariable

source ./test_src.sh 							# call source on the exported variable within test_src.sh
54
./test_src_2.sh 								# test_src_2.sh echos the exported variable in test_src.sh 
54

#!/bin/bash
# git: stage all changes, commit, then push		# gup "Minor updates"
gup ()
{
    local mymessage="next update";
    
    # if $1 not zero length
    if [ ! -z "$1" ]; then
        mymessage=$1
    fi 
    
    git add .
    git commit -m "$mymessage"
    git push
}

#!/bin/bash
# one-size-fits-all command to uncompress different compression formats
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1    ;;
            *.tar.gz)    tar xvzf $1    ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xvjf $1    ;;
            *.tgz)       tar xvzf $1    ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

extract my_compressed_file.gz
extract my_compressed_file.bz2
extract my_compressed_tarball.tar.gz

tar xvzf download.tar.gz 						# x extracting archive, v verbose (give us some output),
												# z unzips the file, f passing the name of the archive file
gzip something.txt								# compress
gzip -d something.txt.gz 						# decompress

Esc -> : -> q! -> RETURN						# quit the vi editor without saving any changes you've made:
												# if insert or append mode: Press Esc -> Press : (colon) -> Enter q! -> Press RETURN

less file1.txt 									# open file.txt in less 
less -S file2.txt    							# allow horizontal scrolling
cat file3.txt | column -t | less -S				# force the columns of the file to line up nicely
cat file4.txt | column -s'      ' -t | less -S 	# delimit columns on tabs (whitespace by default) use CTRL-v TAB to make a tab character in terminal

zless file4.txt.gz    							# view zipped file
arrow keys 										# scroll up and down 
Space 											# page down
q												# quit/exit

grep apple file1.txt          					# return lines of file with the text `apple`
grep -n apple file1.txt       					# include the line number
grep -i apple file1.txt       					# case insensitive matching
grep --color apple file1.txt  					# color the matching text
grep -A1 apple file1.txt						# return lines with the match, as well as 1 after
grep -B2 apple file1.txt						# return lines with the match, as well as 2 before
grep -C3 apple file1.txt						# return lines with the match, as well as 3 before and after
grep -v apple file1.txt							# return lines that don't contain `apple`
grep -R apple dir1/								# search for `apple` in any file in dir1
grep -iR myFunction ./ 00 exclude-dir=.svn 		# search for for myFunction in cwd (case insensitive and recursive dirs and exclude .svn dir)
history | grep apple  							# find commands in history containing `apple`
cat file1.txt | grep -m 2 apple					# exit after finding the first two instances of `apple`
egrep "apple|orange" file1.txt  				# return lines with `apple` OR `orange`

tsc types.ts -w 								# watch mode: run tsc on types.ts whenever types.ts changes

open .											# (mac) opens cwd in Finder
./myprogram										# execute myprogram from the cwd

which less										# /usr/bin/less (the location of less in your PATH)
which cat										# /bin/cat
which rm										# /bin/rm
												# If there is more than one of the same command in your PATH, which will show you the first one in your PATH

#!/bin/bash										# shebang: run script using (path to) bash
#!/usr/bin/perl									# shebang: run script using (path to) perl
#!/usr/bin/env perl								# shebang: run script using whatever the environmental variable for perl is — i.e., the perl that's first in your PATH 

echo $PATH										# shows a priorty-ordered list of locations of programs that can be run using just the command's name 
/dir1/newcommand								# until added to PATH, `newcommand` can be run using /dir1/newcommand
PATH=/dir1:$PATH 								# add /dir1 (and newcommand) to the front of PATH - highest priority
PATH=$PATH:/dir1  								# add /dir1 (and newcommand) to the back of PATH - lowest priority
newcommand         								# newcommand can now be invoked using just its name

export PATH=/some/path/to/prog:$PATH			# adding prog to the front of our PATH in .bash_profile
												# multiple additions to PATH in .bash_profile:
PATH=/apps/python/2.7.6/bin:$PATH				# use this version of Python
PATH=/apps/R/3.1.2/bin:$PATH					# use this version of R
PATH=/apps/gcc/4.6.0/bin/:$PATH					# use this version of gcc
export PATH										# export

dotfiles										# files: https://github.com/gitliver/.dotfiles
												# strategy: http://oliverelliott.org/article/computing/tut_unix/33

permissions: r 									# r denotes read
permissions: w 									# w denotes write
permissions: x 									# x denotes execute

permissions: drwxrwxrwx							# d denotes for directory,
permissions: -rwxrwxrwx							# dash denotes a file
permissions: lrwxrwxrwx							# l denotes symbolic link

permissions: u 									# u denotes user
permissions: g 									# g denotes group
permissions: o 									# o denotes other/world
permissions: a 									# a denotes all (user, group, other/world)

chmod u+x script.sh  							# add executable(x) permission for the user (u) only
chmod g+rxw file1   							# add read write execute permissions for the group (g)
chmod go-wx file1   							# remove write execute permissions for the group (g) and for everyone else (o) – excluding the user (u)
chmod a-rwx file1   							# remove all permissions for the user (u), the group (g), and the rest of the world (o)

chmod 777 file1     							# grant all permissions (rwxrwxrwx) 111 111 111 = 777
chmod 755 file1     							# reserve write access for the user, but grant all other permissions (rwxr-xr-x) 111 101 101 = 755

ps -p $$										# what implementation of sh are we using?: https://stackoverflow.com/questions/5725296/difference-between-sh-and-bash
sh --version									# what implementation of sh are we using?: https://stackoverflow.com/questions/5725296/difference-between-sh-and-bash

ln -s /path/to/target/file1 link1				# create symbolic link (link1) that links to file1
ln -s /path/to/target/file						# without a name argument, the link will be give the target file's name
rm link1 										# delete link1

ssh username@myhost.university.edu				# login to remote computer
ssh username@{IP-address}						# login to remote computer
ssh username@myhost.university.edu "ls -hl"		# list files on remote computer

~/.ssh/config									# ssh config
mkdir -p ~/.ssh 								# create ssh config if it doesn't exist
cd ~/.ssh
ssh-keygen -t rsa -f localkey					# generate rsa ssh keys:
~/.ssh/localkey.pub								# this will create two files on your computer, a public key...
~/.ssh/localkey									# and a private key

Host Myserver									# instead of ssh-ing manually using a password, add these lines to your ~/.ssh/config file
HostName myserver.com							
User myusername
IdentityFile ~/.ssh/localkey

~/.ssh/authorized_keys							# next, cat your public key and paste it into authorized_keys on the remote machine										
$ ssh Myserver									# now on your local computer, you can ssh into myserver.com without a password
												# to enable ssh on mac: http://oliverelliott.org/article/computing/tips_mac/#sshintoYourMac







curl https://github.com/downloads/wycats 		# curl: download and rename
/handlebars.js/handlebars-1.0.rc.1.min.js 
> handlebars.js 

wget https://raw.githubusercontent.com/git 		# wget: download file into cwd (see: https://en.wikipedia.org/wiki/Wget)
/git/master/README.md

TAB {letter(s)} 								# begin autocomplete using {letter}
(Drag Finder directory into Terminal)			# copy directory location to Terminal

sudo lsof -t -i tcp:4200 | xargs kill -9 		# kill currently running process on port 4200	

less /private/etc/apache2/httpd.conf 			# LoadModule php5_module /usr/local/opt/php54/libexec/apache2/libphp5.so

open -e /usr/local/etc/httpd/httpd.conf			# open in TextEdit

less /etc/hosts									# edit hosts file

whoami											# show current user
groups											# show user's groups

# comment										# comment

man												# show manual
man	ls											# show manual for ls command

Right-click (in PuTTy)							# paste 