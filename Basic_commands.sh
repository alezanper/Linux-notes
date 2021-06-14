#BASIC LINUX COMMANDS
# They are case sensitive

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

# Change directory
cd

# Check current directory	
pwd

# concatenates and display files
cat

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

	