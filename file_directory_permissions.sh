# First character of permissions
-	# Regular file (-rw-rw-r--)
d	# directory (drw-rw-r--)
|	# simboly link (|rw-rw-r--)

# Regarding permissions:
r	# read
w	# write
x	# execute

# Permission categories
u	# User
g	# group
o	# Other
a	# all

# -rw-rw-r--
-		# type (regular file)
rw-		# user permissions
rw-		# group permissions
r--		# other

# Commands
groups	# list groups
groups <group_name>	


# Changing permissions
chmod	# change mode command
ugoa	# user category (user, group, other, all)
+-=		# add, substract, or set permissions
rwx		# read, write, execure

chmod g+w sales.data	        # add write permissions to group
chmod g-w sales.data	        # remove write permissions to group
chmod g+wx sales.data	        # add write and execute permissions 
chmod u+rwx, g-x sales.data		# add rwx to user and remove execure to group
chmod a=r sales.data	        # set to all users read

# Numeric permissions
rwx		# 111	7
r-x		# 101	5
r--		# 100	4


# Finding files and directories
# find: useful for real time queries
-name <pattern>	    # find files and directories that match pattern
-iname <pattern>    # ignore case
-mtime <days>       # finds files that are days old
-size <num>		    # finds files that are of size num
-newer <file>		# finds files that are newer that file

find . 	                        # find all
find /opt -name <folder>        # find a folder 
find /opt -iname <folder>       # find folder ignoring case
find /opt -name *v		        # find files/folder ending with v
find . -mtime +10 -mtime -13    
find . -name s* -ls
find . -size +1G
find - -type d -newer file.txt  
find . -exec file {} \;		    # check each folder/document and try to say the type

# locate: faster than find but not for real time, queries at index
locate sales
locate sal

# vim
:$          # end of the file
i           # insert at the cursor position
:x          # same as :wq
/th		    # it is going to find the th on the text
:set nu	    # add numbers per lines
:5	        # go to line 5

# Modify files
rm file 	                            # remove file
rm -r dir	                            # remove directory and contents 
rm -f file	                            # force deletion
rm s*	                                # remove all files starting with s will be deleted
cp <source_file> <destination_file>
cp <file1> <file2> <destiny_folder>     # copy files into directory
cp -r <origin_folder> <destiny_folder>  # copy recursive files and directories to new one

mv <source> <destination>
sort file.txt	    # sort content
sort -u file.txt	# sort content and remove duplicates
sort -ru file.txt	# reverse sort content and remove duplicates

# tar
tar
-c	# create a tar archive
-X	# Extract files from the archive
-t	# Display the table of contents
-v	# Be verbose
-z	# use compression
-f  # file	use this file

tar cf folder.tar folder	# create a tar file
tar tf folder.tar			# dsplay
tar xf folder.tar			# extract files
tar xvf folder.tar			# show files to be extracted

du -k file
gzip file
du -k file.gz
gunzip file.gz

# UMASK
mkdir testumask
cd testumask
umask
umask -S
mkdir a-dir
touch a-file
ls -l
rmdir a-dir
rm a-file
umask 007
mkdir a-dir
touch a-file
ls -l
