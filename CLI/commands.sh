# history ===========================================
history													# shows history of typed commands
history | grep apple  									# find commands in history containing `apple`
history | tail        									# print the last 10 lines of history of the current session
tail ~/.bash_history									# print the last 10 lines of history of the previous session

# bash_profile begin									# append history to history file as you type in commands (for all open shells)
shopt -s histappend										# shopt = shell option
export PROMPT_COMMAND='history -a'
# bash_profile end

history -c  											# clear history list in memory
echo > ~/.bash_history									# trash history

# in .bash_profile (or alias file)
# notes append alias
alias n="history | tail -2 | head -1 | tr -s ' ' | cut -d' ' -f3- | awk '{print \"# \"\$0}' >> notes"
# The -s flag in tr stands for squeeze-repeats and the point of this is that there can be a varying number of space characters in the whitespace.
# Since we're going to cut on space as the delimiter, we have to make sure this doesn't trip us up.  With this out of the way, we simply cut on
# space and use awk to put a pound sign in front of the command, so it's read as a comment.
./long_hard-to-remember_command --with_lots --of_flags > poorly_named_file
n														# saves command in notes file in cwd


# read ==============================================
while read x; do echo "$x"; done < file.txt				# read up a file with a while loop using read e.g., spit out file.txt exactly as is

echo -e '1\t2\n3\t4\n5\t6'
1       2
3       4
5       6

echo -e '1\t2\n3\t4\n5\t6' | while read x y; 			# read each column into variables
do echo $x;
done
1
3
5


# while loops ========================================
#!/bin/bash
i=0

while [ $i -le 2 ]										# -le, -lt, -ge, -gt, e
do
	echo Number: $i
	((i++))
done

#!/bin/bash
file=/etc/passwd
														# IFS= prevent default trimming of leading/trailing whitespace characters (spaces and tabs)
while IFS= read -r line; do 							# use read with the -r option to prevent backslash acting as an escape character
	echo $line
done < "$file"

#!/bin/bash
i=0
while [ $i -lt 5 ]
do
	((i++))
	if [[ "$i" == '2' ]]; then
		continue
	fi
	echo "Number: $i"
done
echo 'All Done!'

# output
Number: 1
Number: 3
Number: 4
Number: 5
All Done!


# tee ===============================================	# save a file in the middle of the pipeline and keep going
cat test.txt
1	c
3	c
2	t
1	c

cat test.txt | sort -u | tee tmp.txt | wc -l
3

cat tmp.txt
1	c
2	t
3	c

echo joe | tee test.txt									# joe is echoed to std:out as well as saved in the file test.txt
joe

cat test.txt
joe


# piping ============================================ 	# pipe design philosophy: send data to stdout to make it easy to chain together with other tools
cat file.txt | sort | less 								# only the stdout stream gets passed through the pipeline; the stderr hits the screen right away
cat -n file.txt | head -37 | tail -1  					# print row 37
cat -n file.txt | awk 'NR==37'        					# print row 37 (NR = row number)
cat file.txt | cut -f2 | sort -u | wc -l  				# print the number (wc -l) of unique elements (-u) in the second column (cut -f2) of a file
head -1 file.txt | tr "\t" "\n" | nl -b a  				# number the fields in a tab-delimited header and display them as a column
bind -P | grep history-search-backward   				# find the key-binding for history-search-backward
cat file.txt | awk '$1==1' | cut -f2-4    				# display columns 2 through 4 (cut -f2-4) of a file for rows such that the first column equals 1
history | grep "|" | less  								# find all the commands in your history with pipes ("|")
len=$( cat file.txt | wc -l )							# store length of file (wc -l = word count -lines) in a variable

cat tmp.txt												# print the number of *unique* elements in column 3 (delimiting on tab)
1       aa      3
1       34      z
1       f       32
2       3r      z
2       d       cc
3       d       34
x       e       cc
x       1       z

cat tmp.txt | cut -f3 | sort -u | wc -l 				# print the number of unique elements in column 3 (delimiting on tab) (cut -f3 = get column 3) (wc -l = count lines)
5

# command substitution ==============================
														# run a command on the fly and use its output as an argument for another command or store it in a variable
d=$( pwd )												# store cwd in a variable
d=$( dirname $( readlink -m $0 ) )						# save scripts directory in the variable d (readlink gets absolute path of script ($0))
for i in $( cat file.txt | cut -f3 | sort -u ); 		# loop through and echo all unique elements of the third column of file.txt
do echo $i;
done

for i in $( ls *.txt | grep -v apple ); 				# loop through all .txt files in the cwd that do not contain the word apple
do echo $i;
done

touch {1..3}.txt										# create three files
for i in {1..3}.txt;
do j=$( echo $i | sed 's|\.txt|\.html|' );  			# change file extension
cmd="mv $i $j"; 										# create cmd and save it
echo "Run command: $cmd"; 								# echo cmd to user
echo $cmd | bash; 										# run cmd
done

for i in
	$( echo $PATH | tr ":" "\n" | head -3 ); 			# For the first three directories in our PATH, show how many things are in each and how big each is
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

# process substitution ==============================
														# > ... process substitution is a form of inter-process communication that allows the input or
														# output of a command to appear as a file. The command is substituted in-line, where a file
														# name would normally occur, by the command shell. This allows programs that normally only accept
														# files to directly read from or write to another program. -- Wikipedia

cat <( head -1 file.txt ) <( tail file.txt )			# whatever's in the block: <( ) is treated as a file

cat <( head -1 temp.txt ) 								# sort on the first column without touching your header
	<( cat temp.txt | sed '1d' | sort -k1,1n )

#!/bin/bash
# return line count of file
myfile=$1
len=$( cat $myfile | wc -l )
echo "Your file is $len lines long."

./test_script <( gunzip --stdout 1.txt.gz )				# use process substituion to pass in a compressed file
Your file is 11 lines long.

# processes =========================================
time script.py > out.o 2> out.e &						# time how long your script takes to run
nohup script.py > out.o 2> out.e &						# nohup ("no hang up") = run script even if the terminal is quit

sleep 60 &												# to run things in the background, use an ampersand. use ps -f to see process running and get its PID
ps														# list processes currently running (plain)
ps -f 													# list processes currently running (verbose)
pstree 													# shows us the process hierarchy (brew install pstree)
tree -L 1 												# view tree with one level of depth (brew install tree)
ps -A  													# show all process info (not just those processes spawned by terminals)
ps -fA  												# show all process info (verbose)
top 													# show dynamic view of your processes

sleep 60  												# run sleep in fg
^Z														# pause job with control-z
[1]+  Stopped                 sleep 60
jobs      												# see jobs
[1]+  Stopped                 sleep 60
bg        												# set running in background
[1]+ sleep 60 &
jobs      												# see jobs
[1]+  Running                 sleep 60 &
fg        												# bring job from background to foreground
sleep 60

sleep 60 &												# run sleep in bg
[1] 7161
jobs
[1]+  Running                 sleep 60 &
kill %1 												# kill job running in bg
[1]+  Terminated: 15          sleep 60

CTRL-c													# kill job running in fg

ps -Af | grep Terminal									# show PID of Terminal process (e.g. 252)
kill 252

# stdout and streams ============================================
stdin (standard in)
stdout (standard out)
stderr (standard error)
curl http://example.com/ > example.html					# send response (via stdout) to example.html
curl http://example.com > files.html 2>errors.html		# send response (via stdout) to example.html and stderr (2>) to errors.html

./myscript.sh > out.txt 2> err.txt  					# save the output into out.txt and the error into err.txt
1> o.txt												# save stdout to o.txt (> also works)
2> e.txt 												# save stderr to e.txt
&1   													# is the standard out stream
&2   													# is the standard error stream

#!/bin/bash
echo "hello kitty"										# echo "hello kitty" to stdout
echo "hello kitty" > somefile.txt						# echo "hello kitty" to the file somefile.txt
echo "hello kitty" > &1									# echo "hello kitty" to stdout
echo "hello kitty" > &2									# echo "hello kitty" to sterr
echo "hello kitty" > 1									# echo "hello kitty" to the file named 1


# watch ============================================= 	# repeat every 2.0 seconds
watch ls -hl /some/directory							# monitor directory's size
watch tail log.txt										# monitor log (last 10 lines)

# scripting (various) ================================

cmd="ls -hl";
echo $cmd;
echo $cmd | bash										# retrace your steps by echoing a command before execute it using a pipe into bash

#!/bin/bash
a=joe
if [ $a == "joe" ]; then echo hello; fi					# if then conditional logic
hello

#!/bin/bash
a=joe
if [ $a == "joe" ]; then 								# if/elseif/else then conditional logic
    echo hello;
elif [ $a == "doe" ]; then
    echo goodbye;
else
    echo "ni hao";
fi

#!/bin/bash
case $rental in											# case statement
   "car") echo "For $rental rental is...";;
   "van") echo "For $rental rental is...";;
   "jeep") echo "For $rental rental is...";;
   "cycle") echo "For $rental rental is...";;
   "plane") echo "For $rental rental is..";;
   *) echo "Sorry, I can not get a $rental";;
esac

touch emptyfile          								# create an empty file
echo joe > nonemptyfile  								# create a non-empty file

file=emptyfile
if [ -e $file ]; then echo "exists";       				# The operator -e tests for existence
	if [ -s $file ]; then echo "non-0"; 				# The operator -s tests for non-zero-ness
	fi;
fi
exists													# result output

file=nonemptyfile
if [ -e $file ]; then echo "exists"; 					# The operator -e tests for existence
	if [ -s $file ]; then echo "non-0"; 				# The operator -s tests for non-zero-ness
	fi;
fi
exists													# result output
non-0													# result output

echo joe
joe
echo $?  												# query exit code of previous command
0														# 0 = success code

cat test_exitcode.sh 									# create script with sleep command
#!/bin/bash
sleep 10

./test_exitcode.sh; 									# run without interruption
echo $?
0														# success

./test_exitcode.sh;  									# run with interruption
^C
echo $?
130														# 130 = fail code

./test_exitcode.sh 										# run without interruption
if [ $? == 0 ];
	then echo "program succeeded";
	else echo "program failed";
fi
program succeeded

./test_exitcode.sh; 									# run with interruption
^C
if [ $? == 0 ];
	then echo "program succeeded";
	else echo "program failed";
fi
program failed

#!/bin/bash
outputdir=nonexistentdir  								# set output dir equal to a nonexistent directory
if ! cd $outputdir;
	then echo "couldnt cd into output dir";
fi
-bash: pushd: nonexistentdir: No such file or directory
couldnt cd into output dir

#!/bin/bash
mkdir existentdir  										# make a test directory
outputdir=existentdir
if ! cd $outputdir;
	then echo "couldnt cd into output dir";
fi
# no error - now we're in existentdir

for i in 1 2 3 hello; do echo $i; done					# basic for loop
1
2
3
hello

for i in {1..10}; do echo -n "$i "; done				# loop and suppress new line
1 2 3 4 5 6 7 8 9 10

echo {1..10}											# loop range

x=1;
while ((x <= 3)); 										# basic while loop
	do echo $x;
	((x++));
	done
1
2
3

cat junk.txt 											# create file
1
2
3

while read x;											# iterate over file (read each line of x)
	do echo $x;
	done < junk.txt
1
2
3

#!/bin/bash
# hellokitty.sh
echo $0													# echo the name of the script
echo hello $1 $4										# echo `hello` and the first and fourth args
./hellokitty.sh my sweet kitty cat						# run hellokitty.sh with four args: my sweet kitty cat
./hellokitty.sh											# output
hello my cat 											# output

#!/bin/bash
helpmessage="This script shows how to read arguments"

### get arguments
while (($# > 0)); do									# while input array ($) size ($#) is greater than zero
    if [
		"$1" == "-h" -o
		"$1" == "-help" -o
		"$1" == "--help" ]; then						# -o is logical OR
        shift; 											# shift deletes item from args array
        echo "$helpmessage"
        exit;											# exit script
    elif [ "$1" == "-f1" -o "$1" == "--flag1" ]; then
        shift; var1=$1; shift							# store what's passed via flag1 in var1
    elif [ "$1" == "-f2" -o "$1" == "--flag2" ]; then
        shift; var2=$1; shift							# store what's passed via flag2 in var2
    elif [ "$1" == "-f3" -o "$1" == "--flag3" ]; then
        shift; var3=$1; shift							# store what's passed via flag2 in var3
    else    											# if unknown argument, just shift
        shift
    fi
done

### main
# echo variable if not empty
if [ ! -z $var1 ]; then echo "flag1 passed "$var1; fi	# -z is empty check
if [ ! -z $var2 ]; then echo "flag2 passed "$var2; fi
if [ ! -z $var3 ]; then echo "flag3 passed "$var3; fi

./test_args --flag1 x -f2 y --flag3 zzz					# run script with flags and args
flag1 passed x											# output
flag2 passed y											# output
flag3 passed zzz										# output

./test_args --flag3 x --flag1 zzz						# flags can be passed in any order
flag1 passed zzz
flag3 passed x

# source, export ====================================

cat ./test_src.sh

#!/bin/bash
myvariable=54
echo $myvariable

source ./test_src.sh 									# run ./test_src.sh and persist the return value
54
echo $myvariable										# echo persisted variable after script has run
54
. ./test_src.sh  										# . is shorthand for source
54

cat ./test_src.sh
#!/bin/bash
export myvariable=54  									# export this variable to make it available to other scripts
echo $myvariable

cat ./test_src_2.sh 									# another script (test_src_2.sh) wants to use $myvariable
#!/bin/bash
echo $myvariable

source ./test_src.sh 									# call source on the exported variable within test_src.sh
54
./test_src_2.sh 										# test_src_2.sh echos the exported variable in test_src.sh
54

# function ==========================================

#!/bin/bash
# git: stage all changes, commit, then push				# gup "Minor updates"
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

# compression/uncompression =========================

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

gzip file.txt											# compress
gzip -d file.txt.gz 									# decompress
gunzip file.txt.gz										# decompress
cat file.gz | gunzip | head								# preserve zipped file while allowing preview of it
zcat file.gz 											# cat a file without unzipping it
zless file.gz											# less a file without unzipping it

														# tar rolls, or glues, an entire directory structure into a single file (the original directory remains)
tar -cvf dir.tar dir									# tar dir into a tarball called dir.tar.
														# "create a new archive containing the specified items" (-c),
														# "write the archive to the specified file" (-f), verbose (-v)

tar -xvf dir.tar										# untar/extract (-x)
tar -zcvf dir.tar.gz dir								# tar and zip dir into a zipped tarball dir.tar.gz
tar -zxvf dir.tar.gz									# extract (-x) plus unzip (-z)


# less =============================================
less file1.txt 											# open file.txt in less
less -S file2.txt    									# allow horizontal scrolling
cat file3.txt | column -t | less -S						# force the columns of the file to line up nicely
cat file4.txt | column -s'      ' -t | less -S 			# delimit columns on tabs (whitespace by default) use CTRL-v TAB to make a tab character in terminal

zless file4.txt.gz    									# view zipped file
arrow keys 												# scroll up and down
Space 													# page down
q														# quit/exit


# nano =============================================
CTRL-O 													# save
CTRL-X 													# quit


# vi ===============================================
Esc -> : -> q! -> RETURN								# quit the vi editor without saving any changes you've made:
														# if insert or append mode: Press Esc -> Press : (colon) -> Enter q! -> Press RETURN

# grep =============================================
grep apple file1.txt          							# return lines of file with the text `apple`
grep -n apple file1.txt       							# include the line number
grep -i apple file1.txt       							# case insensitive matching
grep --color apple file1.txt  							# color the matching text
grep -A1 apple file1.txt								# return lines with the match, as well as 1 after
grep -B2 apple file1.txt								# return lines with the match, as well as 2 before
grep -C3 apple file1.txt								# return lines with the match, as well as 3 before and after
grep -v apple file1.txt									# return lines that don't contain `apple`
grep -R apple dir1/										# search for `apple` in any file in dir1
grep -iR myFunction ./ 00 exclude-dir=.svn 				# search for for myFunction in cwd (case insensitive and recursive dirs and exclude .svn dir)
history | grep apple  									# find commands in history containing `apple`
cat file1.txt | grep -m 2 apple							# exit after finding the first two instances of `apple`
egrep "apple|orange" file1.txt  						# return lines with `apple` OR `orange`


# sort =============================================
echo "2 2 2 1 2 1 3 4 5 6 6" | tr " " "\n" | sort		# truncate (tr) whitespace, insert newlines, and sort
1
1
2
2
2
2
3
4
5
6
6

echo "2 2 1 2 1 3 4 5 6 6" | tr " " "\n" | sort | uniq -d 	# find duplicate (-d) entries
1
2
6

echo "2 2 1 2 1 3 4 5 6 6" | tr " " "\n" | sort | uniq -u 	# find non-duplicate/unique (-u) entries
3
4
5

# globbing ==========================================
touch A1f A2a A3c A4d A5a B5x							# create files
ls														# list everything
A1f  A2a  A3c  A4d  A5a  B5x
ls A{2..5}*												# list files beginning with A2 through A5 (using * glob)
A2a  A3c  A4d  A5a

# perl regex ========================================
$ cat test_table.txt									# convert test_table.txt to HTML
x	y	z
1	2	3
a	b	c

cat test_table.txt | perl -ne 'BEGIN{print "<table border=\"1\">\n";}{
      chomp($_);
      my @line=split("\t",$_);
      print "<tr>";
      foreach my $elt (@line) { print "<td>$elt</td>"; }
      print "</tr>\n";
  }END{print "</table>\n";}'
# output:
<table border="1">
<tr><td>x</td><td>y</td><td>z</td></tr>
<tr><td>1</td><td>2</td><td>3</td></tr>
<tr><td>a</td><td>b</td><td>c</td></tr>
</table>

cat mail.txt
xd2@joe.com
malformed.hotmail.com
malformed@@hotmail.com
carlos_danger@gmail.com
hellokitty@yahoo.com

cat mail.txt | perl -ne '{chomp($_); if ($_ =~ m/(\w+)\@{1}(\w+)/) {print $_,"\n";}}' 		# @{1}
xd2@joe.com
carlos_danger@gmail.com
hellokitty@yahoo.com

$ cat mail.txt | perl -ne '{chomp($_); if ($_ =~ m/(\w+)\@{2}(\w+)/) {print $_,"\n";}}'		# @{2}
malformed@@hotmail.com

$ cat mail.txt | perl -ne '{chomp($_); if ( $_ =~ m/(\w+)(\@+)(\w+)/) {print $2,"\n";}}'	# print $2 (capture group 2)
@
@@
@
@

# awk ===============================================	# awk executes its code once every line ($0 = whole line, $1 = first column, $2 = second column)
cat test.txt
1	c
3	c
2	t
1	c

cat test.txt | awk '{print}'     						# print full line
1	c
3	c
2	t
1	c

cat test.txt | awk '{print $0}'  						# print full line
1	c
3	c
2	t
1	c

cat test.txt | awk '{print $1}'  						# print column 1
1
3
2
1

cat test.txt | awk '{print $2}'  						# print column 2
c
c
t
c

cat test.txt | awk 'BEGIN{x=""}{x=x"@"$1; print x}'	# BEGIN block gets executed before the file is read and anything in an END block gets executed after it's read.
														# If you define variables in awk they're global and persist rather than being cleared every line.
@1
@1@3
@1@3@2
@1@3@2@1

cat test.txt | awk 'BEGIN{x=""}{x=x"@"$1}END{print x}'
@1@3@2@1

cat test.txt | awk '{x+=$1}END{print x}'  			# sum up all values in the first column (# x+=$1 is the same as x=x+$1)
7

cat test.txt | awk '{print $1"\t"$2}'        			# write tab explicitly
1	c
3	c
2	t
1	c

cat test.txt | awk '{OFS="\t"; print $1,$2}' 			# set output field separator (OFS) to tab
1	c
3	c
2	t
1	c

cat test.txt | awk '{OFS="\t"; print NR,$1,$2}'     	# print row number (NR)
1	1	c
2	3	c
3	2	t
4	1	c

cat test.txt | awk '{OFS="\t"; print NR,NF,$1,$2}'  	# print row number (NR) and total number of fields (NF)
1	2	1	c
2	2	3	c
3	2	2	t
4	2	1	c

cat test.txt | awk '{if (NR==3) {print $0}}'  			# print the 3rd row of your file
2       t

cat test.txt | awk '{if (NR==3) {print}}'     			# print the 3rd row of your file (more compact syntax)
2       t

cat test.txt | awk 'NR==3'                    			# print the 3rd row of your file (even more compact syntax)
2       t

cat test.txt | awk '{print NF}' | sort -u				# check if every row has the same number of columns
2

cat test.txt | awk '{print $NF}' 						# $NF = contents of the last column
c
c
t
c

echo "a b" | awk '{print $1}'							# awk delimits on space	by default
a
echo "a b" | awk -F"\t" '{print $1}'					# set awk to delimit on tabs
a b

x=hello
cat test.txt | awk -v var=$x '{ print var"\t"$0 }' 		# use variables inside your awk by importing them with the -v flag
hello	1       c
hello	3       c
hello	2       t
hello	1       c

														# write to multiple files from inside awk
cat test.txt | awk '{if ($1==1) {print > "file1.txt"} else {print > "file2.txt"}}'
cat file1.txt
1       c
1       c

cat file2.txt
3       c
2       t

echo joe | awk '{for (i = 1; i <= 5; i++) {print i}}'	# for loop
1
2
3
4
5

echo -e "a\ta\na\tc\na\tz\na\ta"						# challenge: how would you print the row numbers such that the first field equals the second field?
a	a
a	c
a	z
a	a
														# answer:
echo -e "a\ta\na\tc\na\tz\na\ta" | awk '$1==$2{print NR}'
1
4

# Suppose we have some files that start with the prefix myfile and we want to concatenate them together.
# However, in the resulting file, we want the first column to be the name of the file from which that row originated.
for i in myfile*; do echo "*** "$i" ***"; cat $i | awk -v x=${i} '{print x"\t"$0}' >> files.concat.txt; done

# Suppose we have a text file of URLs, test_markup.txt:
cat test_markup.txt
https://www.google.com
http://www.nytimes.com
http://en.wikipedia.org/wiki/Main_Page
# and we want to convert them into HTML links. This is easy with awk:
cat test_markup.txt | awk '{print "<a href=\""$1"\">"$1"</a><br>"}'
<a href="https://www.google.com">https://www.google.com</a><br>
<a href="http://www.nytimes.com">http://www.nytimes.com</a><br>
<a href="http://www.wikipedia.org">http://www.wikipedia.org</a><br>
# Notice that we've escaped the quote character with a slash where necessary.

# Suppose you want to add numbers above each column at the top of a text file. If your file looks like this:
hello	kitty	kitty
hello	kitty	kitty
# then the goal is to make it look like this:
1		2		3
hello	kitty	kitty
hello	kitty	kitty

cat file.txt | awk -F"\t" '{
	if (NR==1)  # if first line
 	{
      	# loop thro the number of fields
      	for (i=1; i<=NF; i++)
      	{
          	# print number with no tab or newline
          	printf i;

          	# use the fact a tab is 8 characters
          	# print extra tabs for long words
          	for (j=1; j<=int(length($i)/8); j++) { printf "\t" };

          	# if last field, print newline; otherwise, print tab
          	if (i==NF) { printf "\n" } else { printf "\t" }
      	};

      	# print first line
      	print $0
  	}
  	else  # if not first line, simply print
  	{
      	print $0
}}'

cat tmp.txt												# print only the odd-numbered rows of tmp.txt
aaa
bbb
ccc
ddd
eee
fff
ggg
hhh
iii
jjj

cat tmp.txt | awk '{print NR"\t"NR%2"\t"$0}' 			# explicitly list the row number (NR) as well as the row number mod 2 (Nr%2)
1       1       aaa
2       0       bbb
3       1       ccc
4       0       ddd
5       1       eee
6       0       fff
7       1       ggg
8       0       hhh
9       1       iii
10      0       jjj

cat tmp.txt | awk 'NR%2==1'								# get only those rows where the mod 2 of row number is 1
aaa
ccc
eee
ggg
iii

# sed ===============================================
cat test_header.txt
This is a header
1	asdf
2	asdf
2	asdf

cat test_header.txt | sed '1d'    						# delete the first line (d = delete if the pattern is matched)
1	asdf
2	asdf
2	asdf

cat test_header.txt | sed '1,3d'  						# delete lines 1-3 (1,3 = range)
2	asdf

cat test_comment.txt
1	asdf
# This is a comment
2	asdf
# This is a comment
2	asdf

cat test_comment.txt | sed '/^#/d'						# remove lines beginning with #
1	asdf
2	asdf
2	asdf

s/A/B/													# replace A with B (s stands for substitute) - by default this only works for the first occurrence of A
s/A/B/g													# replace all (g) occurances of A with B

echo "hello kitty. goodbye kitty" | sed 's/kitty/X/'  	# replace the first occurrence of kitty with X (using "/" )
hello X. goodbye kitty

echo "hello kitty. goodbye kitty" | sed 's|kitty|X|'	# replace the first occurrence of kitty with X (using "| )

echo "hello kitty. goodbye kitty" | sed 's/kitty/X/g'  	# replace all occurrences of kitty with X
hello X. goodbye kitty

echo "hello kitty. goodbye kitty" | sed 's|kitty||'		# replace the first occurrence of kitty with nothing
hello . goodbye kitty

touch file{1..3}.txt
for i in file{1..3}.txt;
do j=$( echo $i | sed 's|.txt|.html|'); 				# replace ".txt" with ".html" and overwrite the file
mv $i $j;
done
ls
file1.html  file2.html	file3.html

# touch =============================================
touch test.txt 											# create empty file test.txt
														# run this command to see if you have write permission in a particular dir


# cat ===============================================
cat file.txt											# prints the contents of file.txt
cat file.txt file2.txt									# prints the contents of both file.txt and file2.txt concatenated together
cat -n file.txt      									# prints the contents of file.txt with line numbers
cat file.txt | wc -l									# count the number of lines in a file
cat file.txt | cut -f1									# cut the first column
cat file.txt | awk ...									# awk will process what cat pipes out in a linewise fashion
echo "hello world" | cat								# if you route something to cat via a pipe, it just passes through
zcat file.txt.gz 										# zcat cats zipped files
tac file.txt											# see file.txt in reverse order

echo joe > file.txt 									# save to file
cat file.txt
joe

echo joe >> junk.txt  									# append to already-existing file
cat junk.txt
joe
joe

# column =============================================
cat myfile.txt | column -t 								# (-t) prints myfile content in table/column format
cat myfile.txt | column -t | less -S					# use less for horizontal scrolling

cat myfile.txt | column -s'      ' -t | less -S 		# if fields contain spaces, make column delimit on tab rather than whitespace (default)
														# CTRL-v tab = create tab character

# head and tail ======================================
head file1.txt     	 									# print the first 10 lines of file1 (10 by default)
head -1 file1.txt  	 									# print the first line of file1
head -50 file1.txt 	 									# print the first 50 lines of file1
tail file1.txt     	 									# print the last 10 lines of file1 (10 by default)
tail -1 file1.txt  	 									# print the last line of file1
tail -50 file1.txt 	 									# print the last 50 lines of file1
cat -n file1.txt | head -37 | tail -1  					# print row 37 of file1
history | tail        									# print the last 10 lines of history
ls | head												# print the first 10 elements in the cwd (10 by default)
head -2 file1.txt file2.txt 							# print the file name and first 2 lines of both file1 and file2
head *													# print the first 10 elements of all files in the cwd (10 by default)
ls -t | head -1											# get most recently created/modified file in cwd


# nl (number of lines) ==============================	# numbers each row in a file
cat tmp.txt
aaa
bbb
ccc
ddd
eee

nl -b a tmp.txt
     1  aaa
     2  bbb
     3  ccc
     4  ddd
     5  eee

cat tmp.txt | awk '{print NR"\t"$0}'					# count number of lines using awk
1       aaa
2       bbb
3       ccc
4       ddd
5       eee


# tr (translate) ====================================

echo "joe.joe" | tr "." "\n"							# replace a period with a newline
joe
joe

echo joe | tr "[:lower:]" "[:upper:]"					# replace lowercase letters to uppercase letters
JOE

cat blast_header
qid	sid	pid	alignmentlength	mismatches	numbergap	query_start	query_end	subject_start	subject_end	evalue	bitscore

cat blast_header | tr "\t" "\n" | nl -b a				# replace tabs with newlines and numberings of headers
     1	qid
     2	sid
     3	pid
     4	alignmentlength
     5	mismatches
     6	numbergap
     7	query_start
     8	query_end
     9	subject_start
    10	subject_end
    11	evalue
    12	bitscore

cat tmp.txt
a a a a
a b b b
a v b b
1 b 2 3

cat tmp.txt | tr -d "b"									# delete "b" characters
a a a a
a
a v
1  2 3

cat tmp.txt | tr -d "\n"								# delete newlines
a a a aa b b ba v b b1 b 2 3

cat file.txt | tr -d "\r"								# strip carriage return characters ("\r") from Windows files


# fold ==============================================	# restrict the number of characters per line written to std:out
echo -e "asdfasdfasdf\nasdfasdfasdf"
asdfasdfasdf
asdfasdfasdf

echo -e "asdfasdfasdf\nasdfasdfasdf" | fold -w 5
asdfa
sdfas
df
asdfa
sdfas
df

echo Joe | fold -w 1
J
o
e

cat myfasta.fa
>entry1
AACCCGGCTGCGTACGTACCACAGAGAGGGGTGTA
>entry2
TTATGCGATAAACCCGGGTGTAATTTTATTTTTTT

cat myfasta.fa | grep -v ">" | fold -w 1 | sort | uniq -c	# grep -v (get the reverse)
     17 A
     13 C
     18 G
     22 T


# rev ===============================================	# rev reverses a string
echo hello | rev
olleh


# od ================================================
cat Workbook1.txt | od -tc 								# explicitly prints every character in a string or a file
cat Workbook1.txt | tr "\r" "\n" | od -tc				# strip carriage return characters ("\r") from Windows files and priint remaining characters


# split =============================================	# split splits up a file
$ cat test.txt
1
2
3
4
5
6
7
8
9
10

split -l 3 -d test.txt test_split_						# split file into sub-files with 3 lines in each file (-l 3),  test_split_ prefix, and numeric suffixes (-d)

head test_split_*										# preview splif files...
==> test_split_00 <==
1
2
3

==> test_split_01 <==
4
5
6

==> test_split_02 <==
7
8
9

==> test_split_03 <==									# the last file doesn't have 3 lines because 10 is not divisible by 3 — its line count equals the remainder
10


# uniq ==============================================
cat file1.txt											# Given two files (file1 and file2), how do you find the rows that are only in one of them?
1
200
324
95
10
a b c

cat file2.txt
3
1
200
324
95

cat file1.txt file2.txt file2.txt | sort | uniq -u
10
a b c

>17 dna:chromosome chromosome:GRCh37:17:1:81195210:1 REF			# count the number of As, Ts, Cs, and Gs in this sequence
AAGCTTCTCACCCTGTTCCTGCATAGATAATTGCATGACAATTGCCTTGTCCCTGCTGAA
TGTGCTCTGGGGTCTCTGGGGTCTCACCCACGACCAACTCCCTGGGCCTGGCACCAGGGA
GCTTAACAAACATCTGTCCAGCGAATACCTGCATCCCTAGAAGTGAAGCCACCGCCCAAA
GACACGCCCATGTCCAGCTTAACCTGCATCCCTAGAAGTGAAGGCACCGCCCAAAGACAC
GCCCATGTCCAGCTTATTCTGCCCAGTTCCTCTCCAGAAAGGCTGCATGGTTGACACACA

cat chr17_300bp.fa | grep -v ">" | fold -w 1 | head					#  discard the identifier line (grep -v ">"), restrict the number of characters printed per line (fold -w 1)
A
A
G
C
T
T
C
T
C
A

cat chr17_300bp.fa  | grep -v ">" | fold -w 1 | sort | uniq -c		# sort the file so that all the A, T, C, and G rows go together, and then count them with uniq -c
73 	A
100 C
63 	G
64 	T

# seq ===============================================
seq 1 5													# display sequence of numbers 1 through 5
1
2
3
4
5

echo {1..5} | tr " " "\n"								# alternative: display sequence of numbers 1 through 5
1
2
3
4
5

seq 1 2 10 												# display sequence of numbers 1 through 5 with step/increment of 2
1
3
5
7
9


# cut ===============================================
cat sample.blast.txt
TCONS_00007936|m.162    gi|27151736|ref|NP_006727.2|    100.00  324
TCONS_00007944|m.1236   gi|55749932|ref|NP_001918.3|    99.36   470
TCONS_00007947|m.1326   gi|157785645|ref|NP_005867.3|   91.12   833
TCONS_00007948|m.1358   gi|157785645|ref|NP_005867.3|   91.12   833

cat sample.blast.txt | cut -f2 								# cut second column (-f2) (cut delimits on tab by default)
gi|27151736|ref|NP_006727.2|
gi|55749932|ref|NP_001918.3|
gi|157785645|ref|NP_005867.3|
gi|157785645|ref|NP_005867.3|

cat sample.blast.txt | cut -f2 | cut -f4 -d"|" 				# cut second column then cut fourth column of result using "|" delimiter
NP_006727.2
NP_001918.3
NP_005867.3
NP_005867.3

cat sample.blast.txt | cut -f5 -d"|" 						# cut fifth column using "|" delimiter
NP_006727.2
NP_001918.3
NP_005867.3
NP_005867.3


# paste =============================================		# join files together in a column-wise fashion (in contrast to cat, which joins files vertically)
cat file1.txt
a
b
c

cat file2.txt
1
2
3

paste file1.txt file2.txt									# deafult delimiter is tab
a	1
b	2
c	3

paste -d";" file1.txt file2.txt								# paste with a delimiter (-d";")
a;1
b;2
c;3

cat sample.fa
>TCONS_00046782
FLLRQNDFHSVTQAGVQWCDLGSLQSLPPRLKQISCLSLLSSWDYRHRPPHPAFFLFFFLF
>TCONS_00046782
MRWHMPIIPALWEAEVSGSPDVRSLRPTWPTTPSLLKTKNKTKQNISWAWCMCL
>TCONS_00046782
MFCFVLFFVFSRDGVVGQVGLKLLTSGDPLTSASQSAGIIGMCHRIQPWLLIY

$ cat sample.fa | paste - -									# put different rows of a file on the same line (you can use as many dashes as you like)
>TCONS_00046782	FLLRQNDFHSVTQAGVQWCDLGSLQSLPPRLKQISCLSLLSSWDYRHRPPHPAFFLFFFLF
>TCONS_00046782	MRWHMPIIPALWEAEVSGSPDVRSLRPTWPTTPSLLKTKNKTKQNISWAWCMCL
>TCONS_00046782	MFCFVLFFVFSRDGVVGQVGLKLLTSGDPLTSASQSAGIIGMCHRIQPWLLIY


# diff ============================================== 		# diff prints out the differences between two files
cat tmp1.txt
a
a
b
c

cat tmp2.txt
a
x
b
c

diff tmp1.txt tmp2.txt
2c2
< a
---
> x


# join ============================================== 		#joins two sorted files on a common key (the first column by default)
cat tmp1.txt
1	a
2	b
3	c

cat tmp2.txt
2	aa
3	bb

join tmp1.txt tmp2.txt
2 b aa
3 c bb


# date ==============================================
date
Sat Mar 21 18:23:56 EDT 2014

date "+%y%m%d"
120310

date "+%D"
03/10/12

date "+%s"


# cal ===============================================
cal
cal -y
cal 12 2011


# dirname, basename =================================

basename /some/path/to/file.txt							# get the file name
file.txt

dirname /some/path/to/file.txt							# get the the directory in which the file resides
/some/path/to

#!/bin/bash
d=$( dirname $( readlink -m $0 ) ) 						# get the directory in which your script itself resides


# set, unset ========================================   # use set to set various properties of your shell

#!/bin/bash												# using -x flag to debug, all commands to be echoed to std:err before they are run
set -x  # activate debugging from here
.
.
.
set +x  # de-activate debugging from here

#!/bin/bash
set -eux												# exit immediately if a simple command exits with a non-zero status (-e)
														# treat unset variables as an error when performing parameter expansion (-u)
echo hello
sleep 5
echo joe

# output:
+ echo hello
hello
+ sleep 5
+ echo joe
joe

#!/bin/bash												# use unset to clear variables
$ TEST=asdf
$ echo $TEST
asdf
$ unset TEST
$ echo $TEST


# md5, md5sum, sha1sum ==============================	# check you've made a faithful copy of a file (file owner provides the md5 checksum)

md5 tmp.txt
84fac4682b93268061e4adb49cee9788  tmp.txt

md5sum tmp.txt
84fac4682b93268061e4adb49cee9788  tmp.txt

sha1sum tmp.txt
fbaaa780c23da55182f448e38b1a0677292dde01  tmp.txt


# env ===============================================	# use env to avoid hard-wired paths in your shebang
#!/usr/bin/env python									# use whichever python is first in the PATH
#!/some/path/python										# use this python: /some/path/python


# $PATH =============================================
which less												# /usr/bin/less (the location of less in your PATH)
which cat												# /bin/cat
which rm												# /bin/rm
														# If there is more than one of the same command in your PATH, which will show you the first one in your PATH

#!/bin/bash												# shebang: run script using (path to) bash
#!/usr/bin/perl											# shebang: run script using (path to) perl
#!/usr/bin/env perl										# shebang: run script using whatever the environmental variable for perl is — i.e., the perl that's first in your PATH

echo $PATH												# shows a priorty-ordered list of locations of programs that can be run using just the command's name
/dir1/newcommand										# until added to PATH, `newcommand` can be run using /dir1/newcommand
PATH=/dir1:$PATH 										# add /dir1 (and newcommand) to the front of PATH - highest priority
PATH=$PATH:/dir1  										# add /dir1 (and newcommand) to the back of PATH - lowest priority
newcommand         										# newcommand can now be invoked using just its name

export PATH=/some/path/to/prog:$PATH					# adding prog to the front of our PATH in .bash_profile
														# multiple additions to PATH in .bash_profile:
PATH=/apps/python/2.7.6/bin:$PATH						# use this version of Python
PATH=/apps/R/3.1.2/bin:$PATH							# use this version of R
PATH=/apps/gcc/4.6.0/bin/:$PATH							# use this version of gcc
export PATH												# export

# bash_profile	=====================================
dotfiles												# files: https://github.com/gitliver/.dotfiles
														# strategy: http://oliverelliott.org/article/computing/tut_unix/33

# permissions ========================================

permissions: r 											# r denotes read
permissions: w 											# w denotes write
permissions: x 											# x denotes execute

permissions: drwxrwxrwx									# d denotes for directory,
permissions: -rwxrwxrwx									# dash denotes a file
permissions: lrwxrwxrwx									# l denotes symbolic link

permissions: u 											# u denotes user
permissions: g 											# g denotes group
permissions: o 											# o denotes other/world
permissions: a 											# a denotes all (user, group, other/world)

chmod u+x script.sh  									# add executable(x) permission for the user (u) only
chmod g+rxw file1   									# add read write execute permissions for the group (g)
chmod go-wx file1   									# remove write execute permissions for the group (g) and for everyone else (o) – excluding the user (u)
chmod a-rwx file1   									# remove all permissions for the user (u), the group (g), and the rest of the world (o)

chmod 777 file1     									# grant all permissions (rwxrwxrwx) 111 111 111 = 777
chmod 755 file1     									# reserve write access for the user, but grant all other permissions (rwxr-xr-x) 111 101 101 = 755

sudo chown ec2-user myfile								# myfile is owned by root. grant ownership to ec2-user
sudo chown someuser:somegroup myfile					# change both the user to someuser and the group to somegroup
sudo chown $( whoami ):$( whoami ) myfile				# change the user and group to your current user (via whoami)


# bash ==============================================
ps -p $$												# what implementation of sh are we using?: https://stackoverflow.com/questions/5725296/difference-between-sh-and-bash
sh --version											# what implementation of sh are we using?: https://stackoverflow.com/questions/5725296/difference-between-sh-and-bash


# symbolic links ====================================
ln -s /path/to/target/file1 link1						# create symbolic link (link1) that links to file1
ln -s /path/to/target/file								# without a name argument, the link will be give the target file's name
rm link1 												# delete link1


# readlink ==========================================	# requires (brew install coreutils)
readlink -m mydir 										# get the absolute path of the directory mydir
readlink -m .											# get the absolute path of the cwd


# ssh ===============================================
ssh username@myhost.university.edu						# login to remote computer
ssh username@{IP-address}								# login to remote computer
ssh username@myhost.university.edu "ls -hl"				# list files on remote computer

~/.ssh/config											# ssh config
mkdir -p ~/.ssh 										# create ssh config if it doesn't exist
cd ~/.ssh
ssh-keygen -t rsa -f localkey							# generate rsa ssh keys:
~/.ssh/localkey.pub										# this will create two files on your computer, a public key...
~/.ssh/localkey											# and a private key

Host Myserver											# instead of ssh-ing manually using a password, add these lines to your ~/.ssh/config file
HostName myserver.com
User myusername
IdentityFile ~/.ssh/localkey

~/.ssh/authorized_keys									# next, cat your public key and paste it into authorized_keys on the remote machine
ssh Myserver											# now on your local computer, you can ssh into myserver.com without a password
														# to enable ssh on mac: http://oliverelliott.org/article/computing/tips_mac/#sshintoYourMac

# scp ===============================================
# > If you have ssh access to a remote computer and want to copy its files to your local computer, you can use scp according to the syntax:
scp username@host:/some/path/on/remote/machine /some/path/on/my/machine

# rsync ============================================= 							# remotely copy/syncronise files to or from a computer to which you have ssh access
rsync user@host:/some/path/on/remote/machine /some/path/on/my/machine/ 			# copy files from a remote machine
rsync /some/path/on/my/machine user@host:/some/path/on/remote/machine/			# copy files to a remote machine
rsync directory1 directory2														# sync two directories on your local machine
rsync -azv --progress user@myhost.university.edu:/my/source /my/destination/	# archive (-a) preserves symbolic links, devices, attributes, permissions, ownerships
																				# compress(-z), verbose (-v), --progress (show progress indicator)
rsync --exclude mydir user@myhost.university.edu:/my/source /my/destination/ 	# copy certain directories from the source
rsync -azv -L --progress user@myhost.university.edu:/my/source /my/destination/ # copy the files pointed to by the symbolic links ("transform symlink into referent file/dir") (--L)


# curl ==============================================	# `everything curl book`: https://ec.haxx.se/
curl --manual											# https://curl.haxx.se/docs/manpage.html

curl https://github.com/downloads/wycats 				# curl: download and rename
/handlebars.js/handlebars-1.0.rc.1.min.js
> handlebars.js

curl http://example.com									# curl defaults to downloading the resources unless you tell it otherwise
curl http://example.com/								# the trailing slash/path (/) is added automatically added by curl
curl http://example.com/								# by default the response is sent to stdout - send the response to a file using the output flag (-o or --output)
curl -o output.html http://example.com/					# send response to output.html
curl -o /tmp/index.html http://example.com/				# send response to /tmp/index.html
curl http://ex.com -o ../../folder/savethis.html   		# send response to ../../folder/savethis.html
curl -o one.html http://ex.com/1 http://ex.com/2		# responses from 1 and 2 will be sent to one.html via stdout
curl -o 1.txt -o 2.txt http://ex.com/1 http://ex.com/2	# response from 1 is sent to 1.txt and response from 2 to 2.txt
curl http://ex.com/1 http://ex.com/2 -o 1.txt -o 2.txt	# response from 1 is sent to 1.txt and response from 2 to 2.txt
curl -o 1.txt http://ex.com/1 http://ex.com/2 -o 2.txt	# response from 1 is sent to 1.txt and response from 2 to 2.txt
curl -o 1.txt http://ex.com/1 -o 2.txt http://ex.com/2  # response from 1 is sent to 1.txt and response from 2 to 2.txt
curl -O http://ex.com/file.html							# (-O or --remote-name) = use the filename part of request as the output filename
curl -O --remote-name-all http://ex.com/file ...		# (--remote-name-all) = for all files use the filename part of requested file as the output filename

curl --compressed http://example.com/					# ask server to compress response before sending (curl automatically decompresses on arrival)
curl https://example.com/ --limit-rate 200K				# rate-limit request (K, M and G)
curl --max-filesize 100000 https://example.com/			# size-limit request (in bytes)

curl --verbose http://example.com						# verbose mode (-v) (long option)
curl -v http://example.com								# verbose mode (-v) (short option)
curl --verbose --location http://example.com			# verbose mode (-v) and follow HTTP redirects (-location)
curl -vL http://example.com								# verbose mode (-v) and follow HTTP redirects (-L)
curl http://example.com -Lv								# verbose mode (-v) and follow HTTP redirects (-L)
curl -v -L http://example.com							# verbose mode (-v) and follow HTTP redirects (-L)
curl --no-verbose http://example.com					# switch off verbose mode
curl -data some-data http://example.com					# post some-data
curl -d some-data http://example.com					# post some-data
curl -A "I am your father" http://example.com			# set user agent (-A) string to "I am your father"
curl -d '{ "name": "Darth" }' http://example.com		# post JSON
curl -d @json http://example.com						# post a file called json
curl ftp://user:password@example.com 					# the presence of user name and password in the URL is optional,
														# curl also allows that information to be provided along with normal command-line options
curl ftp://ftp.example.com/tmp/							# ending the URL with a trailing slash implies it is a directory and not a file

curl --location http://example.com/1 --next				# three requests in a single line using --next
  --data sendthis http://example.com/2 --next
  --head http://example.com/3

curl -O http://example.com/[1-100].png					# get 100 images one by one named numerically (-O/--remote-name = save the target file using the file name part of the URL)
curl -O http://example.com/[001-100].png				# get 100 images one by one named numerically
curl -O http://example.com/[0-100:2].png				# get 100 images one by one named numerically with step/increment of 2
curl -O http://example.com/section[a-z].html			# get a range of pages
curl -O http://example.com/{one,two,alpha,beta}.html	# get a list of pages
curl -O http://example.com/{Ben,Alice,Frank}-{100x100,1000x1000}.jpg # get images of Ben, Alice and Frank, in both 100x100 and 1000x1000 resolutions
curl -O http://example.com/chess-[0-7]x[0-7].jpg 		# get images of a chess board, indexed by two coordinates ranged 0 to 7
curl -O http://example.com/{web,mail}-log[0-6].txt		# get a week's worth of logs for both the web server and the mail server
curl http://{one,two}.example.com -o "file_#1.txt"		# get as file_one.txt and file_two.txt
curl http://{site,host}.host[1-5].example.com -o "subdir/#1_#2" # save the outputs from a command line with two globs in a subdirectory (???)
curl -K cmdline.txt http://example.com					# read more command-line options from a specific file
 														# if you want to provide a URL in a config file, you must do that the --url way, or just with url:
														# url = "http://example.com"
														# default config file: curl always (unless -q is used) checks for a default config file and uses it if found.
														# the file name it checks for is .curlrc on Unix-like systems and _curlrc on windows
curl -u alice:12345 https://example.com/				# authentication (no prompt for password)
curl -u alice https://example.com/						# authentication (prompt for password)
curl -v -s http://example.com/ -o saved					# get as `saved`, do not show progress (-s / --silent)
curl -v -# http://example.com/ -o saved					# simple progress meter (-# / --progress-bar)

curl -T uploadthis ftp://example.com/this/directory/	# upload uploadthis to directory
curl -T mail smtp://mail.ex.com/ --mail-from u@ex.com	# upload email
curl smtp://mail.example.com --mail-from myself@example.com --mail-rcpt	# upload email
receiver@example.com --upload-file email.txt










# wget =============================================

wget https://raw.githubusercontent.com/git 				# wget: download file into cwd (see: https://en.wikipedia.org/wiki/Wget)
/git/master/README.md

wget http://example.com/test.MOV						# download test.MOV

cat list.txt | while read i; 							# download each file listed in list.txt
do echo $i;
wget "http://example.com/"${i};
done

while read i; 											# download each file listed in list.txt
do echo $i;
wget "http://example.com/"${i};
done < list.txt


# gpg2 =============================================== 	# http://oliverelliott.org/article/computing/ref_unix/97

# comment ============================================  # comment

# true and false =====================================	# useful to make multi-line comments in a bash script:

# multi-line comment
if false; then
echo hello
echo hello
echo hello
fi

# uncomment the above
if true; then
echo hello
echo hello
echo hello
fi


# navigation =========================================
pwd 													# print current working directory (cwd)
cd - 													# go to previous dir
cd 														# go to user home dir
cd ~													# go to user home dir
cd /													# go to root directory
df 														# reports available disk space

ls 														# list contents of cwd
ls -l 													# lists your files in long format
ls -al													# lists all files (-a) including those begining with a dot
ls -la													# lists all files (-a) including those begining with a dot
ls -l -a												# lists all files (-a) including those begining with a dot
ls -a -l												# lists all files (-a) including those begining with a dot
ls /dir 												# list files in dir
ls -R 													# list recursively
ls -hl  												# long form, human readable
ls -hlt 												# long form, human readable, sorted by time
ls *.txt 												# list any file that has the .txt file extension
ls . dir1 .. dir2/*.txt dir3/A*.html					# list anything in the cwd; anything in dir1; anything in the dir one above; anything in dir2 that ends with .txt;
														# and anything in dir3 that starts with A and ends with .html.
$ for i in $( ls /some/path/*.txt ); 					# print any file in /some/path that has the .txt file extension
do echo $i; done
$ for i in /some/path/*.txt; 							# print any file in /some/path that has the .txt file extension
do echo $i; done


# find ==============================================
find /some/directory -name "myfile"						# find "myfile" in /some/directory
find . -name "*.txt"									# list all text files in the cwd and below (i.e., including child directories)
find /my/dir -iname "*file*"							# list all files containing file - case insensitive (-iname)
find mydirectory | wc -l								# count number of files/dirs in mydirectory

for i in mydirectory/*; 								# count number of files/dirs in mydirectory (recursive)
do echo "***"$i;
find $i | wc -l;
done

find mydirectory -name "tmp.txt" | xargs rm				# delete any files called tmp.txt in mydirectory
for i in $( find mydirectory -name "tmp.txt" ); 		# loop version of above
do echo $i;
rm $i;
done

find mydirectory -name "*.txt" | xargs gzip				# zip any file with the extension .txt in mydirectory
for i in $( find mydirectory -name "*.txt" ); 			# loop version of above
do echo $i;
gzip $i;
done


# create/delete/copy/rename file/dir ================
echo "hello world!" - > file1.txt						# create/overwrite file

mkdir -p a/b/c  										# make nested directories (and -p don't complain if directory already exists)
rmdir dir1												# delete empty directory

rm file1												# delete file
rm -r dir1   											# delete directory and contents
rm -R dir1												# delete directory and contents (-R force recursion)
rm -rf dir1 											# force dleete of a file or directory (i.e., ignore warnings)
rm -rf </path/to/dir1>									# delete directory and contents
rm -rf </path/to/dir1/*>								# delete contents of directory only
rm -P file  											# deletes file securely by first overwriting file contents
shred -zuv file											# deletes file securely by first overwriting file contents (flags are: zero, remove, verbose)
find . -name '.DS_Store' -type f -delete 				# recursively remove .DS_Store

cp file1.sql /httpdocs 									# copy myfile from cwd to another dir
scp file1.sql /httpdocs 								# secure copy file from cwd to another dir
cp file1 file2 											# copy file1 to file2
cp -R dir1 dir2 										# copy directories plus files recursively
cp -R dir1 ../../										# make a copy of dir1 into the dir two levels up from our cwd

mv file1 dir1/dir2										# move file1 into dir1/dir2/ (or, rename ./file1 as ./dir1/dir2/file1)
mv dir1 dir2 											# (if dir2 exists...) move dir1 into dir2
mv dir1 dir2 											# (if dir2 does not exist...) rename dir1 to dir2
mv -n file1 dir2 										# (if file1 exists in dir2 exists...) do not move (-n) file1
mv file1 ~/Desktop 										# move file1 to Desktop
mv -R dir1 ~/Desktop									# move dir1 (and its contents, recursively) to Desktop
mv file1 dir1/dir2/file2								# move file1 into dir1/dir2/ and rename it to file2
mv a a.1												# step 1: Swap the names of two files, a and b
mv b a													# step 2: Swap the names of two files, a and b
mv a.1 b												# step 3: Swap the names of two files, a and b
mv file1.txt file1.html									# change the extension of file1.txt from .txt to .html
mv file1.{txt,html}										# change the extension of file1.txt from .txt to .html


# echo ==============================================
echo -n "test"            								# suppress newline
echo -e "test\ttest\ntest"  							# -e interpret special chars ( \t is tab, \n newline )
echo "test" > readme.txt								# create readme.txt with "test" as content


# variables =========================================
a=3														# create variable
echo a													# a
echo $a													# 3
a=test
echo $a													# test
a="test test"
echo $a													# test test
a=3; b=4
echo $a $b												# 3 4
echo $a$b         										# 34
echo "$a$b"      										# 34
echo -e "$a\t$b"  										# 3	4 (-e flag tells echo to interpret \t as a tab)
var=5
joe=hello $var											# bash: 5: command not found
joe="hello $var"
echo $joe												# hello 5
joe='hello $var'
echo $joe												# hello $var
d=dir1/dir2/dir3
ls $d
cd $d
d=..     												# d = the directory one above
cd $d/.. 												# cd two directories up (cd ../../)
a=3
echo $a													# 3
echo \$a												# $a (use escape to prevent use of $a as a variable)
echo "\$a"  											# $a (use quotes to prevent use of $a as a variable)
echo \\\$a  											# \$a (escape the escape and the use of $a as a variable)
a=3
echo $a													# 3
echo $apple												# (variable apple is not set)
echo ${a}pple											# 3pple (the variable $a plus the string "pple")


# shift ==============================================	# pops elements off the array of input arguments

# tmpscript.sh
#!/bin/bash
echo $1
shift
echo $1

./tmpscript x y											# run tmpscript.sh
x
y


# xargs =============================================	# xargs is a nice shortcut to avoid using for loops
for i in *.txt; do readlink -m $i; done
ls *.txt | xargs -i readlink -m {}						# {} represents "the bucket" — i.e., what was passed through the pipe

ls /some/path/*.txt | xargs -i ln -s {}					# make symbolic links en masse (-i = each line)

cat myfile.txt | xargs -i grep {} anotherfile.txt  		# search for anything in myfile.txt in anotherfile.txt

find my_directory -name "*.fastq" | xargs -i gzip {}	# zip all files with .fastq extension found in a directory or any of its sub-directories

find ./ -name ".DS_Store" | xargs -i rm {}  			# delete all .DS_store files in the cwd or any of its sub-directories

sudo lsof -t -i tcp:4200 | xargs kill -9 				# kill currently running process on port 4200

# lsof ===============================================	# list open files/dir/process/stream
lsof | grep myprogram									# show what files myprogram is opening or writing to
lsof -i													# show all network connections
lsof -i tcp:4200										# show processes running on a specific port
lsof -i tcp:1-1024										# show processes running in a range of ports
lsof -i -u^root											# show processes running for users except root
lsof -r 1												# repeat listing files every 1 second
sudo lsof -t -i tcp:4200 | xargs kill -9 				# kill currently running process on port 4200
														# Mac OS X lsof only shows your own processes unless running as root with sudo


# crontab ============================================
# arguments:
# minute	0-59
# hour		0-23
# day		1-31
# month		1-12
# day		0-7 (where both 0 and 7 mean Sun, 1 = Mon, 2 = Tue, etc)
# command	the absolute path to the command to run along with any parameters

cat mycron.txt
45 10 * * * rm -r /full/path/trash/* > /full/path/out.o 2> /full/path/out.e  	# empty the trash folder every day at 10:45

crontab mycron.txt																# run cron

crontab -l																		# display your cron jobs


# Misc ===============================================
sudo 													# run command as the superuser
														# The most common use case for running commands
														# as the superuser is when you have to install a
														# program which might want to write into a dir
														# root owns, like /usr/bin or accesses sys files

sudo lsof -t -i tcp:4200 | xargs kill -9 				# kill currently running process on port 4200

su user													# switches the user

man														# show manual
man	ls													# show manual for ls command
info grep												# show info about ... grep
apropos grep 											# show commands related to ... grep
shopt 													# controls various togglable shell options

tsc types.ts -w 										# watch mode: run tsc on types.ts whenever types.ts changes

who 													# show users currently logged in
w 														# show users currently logged in as well as what command they're running
whoami													# show current user
groups													# show user's groups

hostname 												# prints the system's host name (the name of the computer)
finger $( whoami )										# prints out information about a user on the system

type 													# type will tell you what type of entity you're dealing with
type ssh
ssh is /usr/bin/ssh
type quickssh
quickssh is aliased to `ssh -Y user@myserver.edu`

uname -a 												# prints out various system information
df -h 													# reports "file system disk space usage"
du -sh myfolder											# reports disk usage of myfolder
du -sh /my/dir/* | awk '$1 ~ /G/'						# find all the files in /my/dir in the gigabyte range

pbcopy < ~/.ssh/id_rsa.pub								# copy to clipboard

sleep 5													# sleep for 5 seconds

clear													# clears the screen
logout													# logout
exit													# exit

open .													# (mac) opens cwd in Finder
./myprogram												# execute myprogram from the cwd
mount													# mounts a filesystem

wc -l													# word count lines
wc -w													# word count words
wc -c													# word count characters

echo $RANDOM											# random number generator
1284

# mktemp ============================================	# make a temporary dir with a unique name in your designated temporary dir

echo $TMPDIR
/path/tempdir

mktemp
/path/tempdir/tmp.LaOYagQwq3

mktemp
/path/tempdir/tmp.h5FapGH4LS

ping 127.0.0.1											# check IP address
dig 127.0.0.1											# get IP address's DNS information
ifconfig | grep inet									# get IP address of local machine


# key bindings =======================================
TAB														# auto-complete
UP ARROW												# show previously executed commands
CTRL-c 													# kill script/process/abort mission
CTRL-a 													# jump cursor to beginning of line
CTRL-e 													# jump cursor to end of line
CTRL-k 													# delete to end of line
CTRL-u 													# delete to beginning of line
CTRL-w 													# delete back one word
CTRL-y 													# paste (yank) what was deleted with the above shortcuts
CTRL-r 													# reverse-search history for a given word
CTRL-z 													# suspend the process running in the foreground
CTRL-l 													# clear screen (works in the Python, MySQL, and other shells)
CTRL-d 													# end of transmission (synonymous with quit - e.g., exiting the Python or MySQL shells)
CTRL-s 													# freeze screen
CTRL-q 													# un-freeze screen
CTRL-v tab												# make tab character

TAB {letter(s)} 										# begin autocomplete using {letter}
(Drag Finder directory into Terminal)					# copy directory location to Terminal

Right-click (in PuTTy)									# paste


# tmux ============================================== 	# (brew install tmux)
														# http://oliverelliott.org/article/computing/ref_unix/65
														# https://leanpub.com/the-tao-of-tmux/read


