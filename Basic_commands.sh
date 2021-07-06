#BASIC LINUX COMMANDS
# They are case sensitive

# Users
[user@linuxsvr]$	# normal user
[user@linuxsvr]#	# root user

# Tree
sudo yum install tree
tree		# it shows directories and files
tree -d		# only directories
tree -C		# content

# ls is for checking directories	
ls
ls -l		# Long listing format
ls /bin		# Check all available commands
ls --help   # Check help documentation
ls -t		# list files by time
ls -r		# reverse order
ls -latr	# Long listing including all files reverse sorted time
ls -R		# Recursively
ls -d		# list directories no content
ls -a	    # it shows hidden files
ls -la	    # combines -a and -l
ls -f	    # to reveal file types
ls -l
-rw-rw-r-- 1 jason users 10400 sep 27 08:52 sales.data
	-rw-rw-r--		# permissions
	1				# number of links
	jason			# owner name
	users			# group name
	10400			# of bytes in the file
	sep 27 08:52	# last modification time
	sales.data		# filename
	/	directory
	@	Link
	*	Executable

# Change directory
cd

# Check current directory	
pwd

# concatenates and display files
cat
cat -n secret

# see variable
echo
echo $PATH  # Read PATH variable

# Displays the online manual
man		
man ls  # Check manual for ls
man -k calendar		# check page content of documentation for calendar

# Locates a command location
which		
which cat	

# DIRECTORIES
.		                    # this directory
..		                    # The parent directory
cd -	                    # Change to the previous directory
$PATH	                    # determines command search path to run commands
mkdir	                    # Create a directory
mkdir -p dir1/dir2/dir3		# Creates multiple directories
rmdir	                    # Removes a directory
rm -rf <directory>	        # Recursively removes directory

# View a File
cat <file_name>	        # display the contents of file
more <file_name>	    # browse through a text file	use bar to advance
less <file_name>	    # more features than more
head <file_name>	    # return the top (10 lines)
tail <file_name>	    # return the bottom (10 lines)
tail -15 <file_name>
tail -f <file_name>	    # for check writing files
