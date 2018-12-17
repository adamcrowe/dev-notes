

CTRL-a  										# move to the beginning of the line
CTRL-e											# move to the end of the line
CTRL-u 											# clear the line (before the cursor position)
CTRL-w 											# delete the word before the cursor position

history											# shows history of typed commands

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

drwxrwxrwx										# d denotes for directory,
-rwxrwxrwx										# dash denotes a file
lrwxrwxrwx										# l denotes symbolic link

CTRL-C 											# kill script/process/abort mission
TAB												# auto-complete
UP ARROW										# show previously executed commands

sudo 											# superuser powers for single command

echo -n "test"            						# suppress newline
echo -e "test\ttest\ntest"  					# -e interpret special chars ( \t is tab, \n newline )
echo "test" > readme.txt						# create readme.txt with "test" as content

var=5										
joe=hello $var									# bash: 5: command not found

var=5
joe="hello $var"								# use double quotes to expand variables
echo $joe										# result: hello 5

var=5
joe='hello $var'								# use single quotes to not expand variables
echo $joe										# result: hello $var //

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