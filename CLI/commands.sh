Esc -> : -> q! -> RETURN					# quit the vi editor without saving any changes you've made:
											# if insert or append mode: Press Esc -> Press : (colon) -> Enter q! -> Press RETURN

pwd 										# print working directory
cd - 										# go to previous dir
cd ~										# go to user's home dir
df 											# reports available disk space

echo "hello world!" - > helloworld.txt		# create/overwrite file

rm <filename>								# delete file
rmdir <directory>							# delete empty directory
rm -R <directory>							# delete directory and contents
rm -rf </path/to/directory>					# delete directory and contents
rm -rf </path/to/directory/*>				# delete contents of directory only

cp myfile.sql /httpdocs 					# copy myfile from pwd to another dir 
scp myfile.sql /httpdocs 					# secure copy file from pwd to another dir 

mv old_dir_name new_dir_name 				# (if new_dir_name does not exist...) rename old_dir_name to new_dir_name 
mv old_dir_name new_dir_name 				#  (if new_dir_name exists...) move old_dir_name into new_dir_name
mv file_name ~/Desktop 						# move file_name to Desktop
mv -R dir_name ~/Desktop					# move dir_name (and its contents) to Desktop

ls 											# list contents of pwd
ls -l 										# lists your files in long format
ls -la										# lists all files including those that begin in a dot
ls /dir 									# list files in dir
ls -R 										# list recursively

UP ARROW									# show previously executed commands
Right-click (in PuTTy)						# paste 
CTRL + C 									# kill script/process
sudo 										# superuser powers for single command

echo "Test" > README.txt					# create README.txt with "Test" as content

tar xvzf download.tar.gz 					# x extracting archive, v verbose (give us some output),
											# z unzips the file, f passing the name of the archive file

gzip something.txt							# compress
gzip -d something.txt.gz 					# decompress

less shoppingList.txt 						# open in less (k and j, b and f to scroll/page; q to exit)
q											# exit less

grep -iR myFunction ./ 00 exclude-dir=.svn 	# search for for myFunction in current directory (case insensitive and 
											# recursive dirs and exclude .svn dir)

tsc types.ts -w 							# watch mode: run tsc on types.ts whenever types.ts changes

/var 										# root of machine
open .										# (mac) opens pwd in Finder

curl https://github.com/downloads/wycats 	# curl: download and rename
/handlebars.js/handlebars-1.0.rc.1.min.js 
> handlebars.js 

wget https://raw.githubusercontent.com/git 	# wget: download file into pwd (see: https://en.wikipedia.org/wiki/Wget)
/git/master/README.md

TAB {letter(s)} 							# begin autocomplete using {letter}
(Drag Finder directory into Terminal)		# copy directory location to Terminal

sudo lsof -t -i tcp:4200 | xargs kill -9 	# kill currently running process on port 4200	

less /private/etc/apache2/httpd.conf 		# LoadModule php5_module /usr/local/opt/php54/libexec/apache2/libphp5.so

open -e /usr/local/etc/httpd/httpd.conf		# open in TextEdit

less /etc/hosts								# edit hosts file