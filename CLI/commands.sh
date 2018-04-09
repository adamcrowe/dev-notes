pwd 						# print working directory
cd - 						# go to previous dir
cd ~						# go to home dir

cp myfile.sql /httpdocs 	# copy myfile from pwd to another dir 
scp myfile.sql /httpdocs 	# secure copy file from pwd to another dir 

ls 							# list contents of pwd
ls -l 						# lists your files in long format
ls -la						# lists all files including those that begin in a dot
ls /dir 					# list files in dir
ls -R 						# list recursively

UP ARROW					# show previously executed commands
Right-click (in PuTTy)		# paste 
CTRL + C 					# kill script
sudo 						# superuser powers for single command

echo "Test" > README.txt	# create README.txt with "Test" as content

tar xvzf download.tar.gz 	# x extracting archive, v verbose (give us some output),
							# z unzips the file, f passing the name of the archive file

gzip something.txt			# compress
gzip -d something.txt.gz 	# decompress

less shoppingList.txt 		# open in less (k and j, b and f to scroll/page; q to exit)
q							# exit less

grep -iR myFunction ./ 00 exclude-dir=.svn 	# search for for myFunction in current directory (case insensitive and 
											# recursive dirs and exclude .svn dir)

tsc types.ts -w 							# watch mode: run tsc on types.ts whenever types.ts changes

/var 										# root of machine
open .										# (mac) opens pwd in Finder

# curl: download and rename
curl https://github.com/downloads/wycats/handlebars.js/handlebars-1.0.rc.1.min.js > handlebars.js 

# wget: download file into pwd (see: https://en.wikipedia.org/wiki/Wget)
wget https://raw.githubusercontent.com/git/git/master/README.md

TAB {letter(s)} 								# begin autocomplete using {letter}
(Drag Finder directory into Terminal)			# copy directory location to Terminal