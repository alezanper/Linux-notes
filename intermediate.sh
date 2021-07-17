# wildcards can be used with most commands
*               # match zero or more characters
*.txt           # all text files
a*              # all files starting with a
a*.txt          # all files starting with a with .txt extension 

?               # matches exactly one character
?.txt           # text files with just a character in the name
a?              # files of two characters starting with a
a?.txt          # files of two characters starting with a and .txt extension

ca[nt]*         # can, cat, candy
[!aeiou]*       # exclude aeiou
[a-g]*	        # words starting with a or b or c.. or g

# wildcares
[[:alpha:]]
[[:alnum:]]
[[:digit:]]
[[:lower:]]
[[:space:]]
[[:upper:]]

# Escape value
*\?	                # Fine a file like done?

ls *                # List all files
ls ?                # List files with a character in name
ls ??               # List files with two characters in name    
ls a?.txt           # List files with two characters in name and .txt extension
ls a*.txt           # List files starting with a in the name and .txt extension
ls -l a*            # List files starting with a and details
ls c[aeiou]t        # List files starting with c, ending with t and with some vocal in the middle: cat, cot, cet  
ls [a-d]*           # List files starting with a, b, c or d
ls *[[:digit:]]     # List files ending with digits 

# Move
mv *.txt folder     # Move all txt files to folder

# i/o redirection

# stdin		0
# stout		1
# stderr		2

ls -l > files.txt                           # list files with details and save it to a file
ls -l 1> files.txt		                    # the same as before
ls >> files.txt		                        # append data to files
sort < files.txt		                    # load data and sorted
sort < files.txt > sorted_files.txt         # sort files and save file to a different file
ls files.txt bot-here 2> out.err            # save errors 
ls files.txt bot-here 1> out 2> out.err     # save resgular results to out and errors to out.err
ls files.txt bot-here 1> out.both 2>&1      # append errors to file

# Compare files
diff file1 file2		    # compare two files
sdiff file1 file2		    # side-by-side comparison
vimdifff file1 file2	    # highlight differences in vim

# grep
grep pattern <filename>
	-i ignore case
	-c count number of occurrences
	-n output with lines where search appears
	-v invert match

grep cat files.txt          # search cat on files.txt
grep cat -ci files.txt      # count the word cat ignoring case


# aliases
alias grpe = 'grep'         # alias for grpe
alias cls = 'clear'         # alias for clear

unalias grpe                # remove alias grpe
unalias -a	                # remove all alias      

#persistent aliases
vim ~/.bash_profile

# file
file *                      # Describes files
file files.txt              # Describe a specific file

# | command
command-output | command-input
cat files.txt | grep <pattern>  # read file and check for pattern in cat result

# transform 
tr <pattern> <pattern2>
tr ":" " "      # hello:world -> hello world

# multiple commands
grep admin* /etc/passwd | cut -d: -f1,5 | sort | tr ":" " " | column -t

# environment variables
printenv				# returns env variables
echo $HOME	
export VAR="VALUE"		# without spaces
export EDITOR="VI"		
unset VAR				# delete var

# processes
ps
	- e 			# everything, all processes
	- f 			# full format listing
	- u username	# display username's processes
	-p pid			# display information for PID

ps -e				# display all processes
ps -ef				# full processes
ps -eH				# display process tree
ps -e --forest		# display process tree
ps -u <username>	# display username's processes

pstree				# display processes in a tree format
top					# interactive process viewer
htop				# interactive process viewer

ps -f
ps -ef
ps -fu <user>
top
htop

# kill processes

ctrl +c 			# kills the foreground proc
kill [-sig] pid		# send a signal to a process
kill -l 			# display a list of signals
kill 123
kill -15 123 		# equal to kill -TERM 123

# CRON Jobs
# crontab format
# run every monday at 7:00
0 7 * * 1 /opt/sales/bin/weekly-report

# run at 2:00 every day and send output to a log file errors included
0 2 * * * /root/backupdb > /tmp/db.log 2>&1

# run every 15 minutes
0,15,30,45 * * * * /opt/acme/bin/15-min-check	# first option
*/15 * * * * /opt/acme/bin/15-min-check			# second option

# Run for the first 5 minutes of the hour
0-4 * * * * /opt/acme/bin/first-five-mins

#shortcuts
@yearly			# 0 0 1 1 *
@annually		# 0 0 1 1 *
@monthly		# 0 0 1 * *
@weekly			# 0 0 * * 0
@daily 			# 0 0 * * *
@midnight		# 0 0 * * *
@hourly 		# 0 * * * *

# Example
crontab -l
vi my-cron
# run every monday at 7:00
0 7 * * 1 /opt/sales/bin/weekly-report

crontab my-cron		# to install
crontab -r			# delete cronjobs


# change the sudo configuration
visudo		# edit the /etc/sudoers file

# sudoers format
user host=(users) [NOPASSWD:] commands
someuser ALL=(ALL) NOPASSWD:ALL

# shell history
~/.batch_history
~/.history
~/.histfile

history		# displays the shell history
HISTSIZE	# Controls the number of commands to retain in history
export HISTSIZE=1000

!h 			# return the most recent command starting with h
!!			# run again the previous command



# Installing software
#	rpm distros
#	RHEL, CentOS, Oracle Linux, AlmaLinux, Rocky Linux

# DEB distros
# 	Debian, Ubuntu, and Linux Mint

# RPM
yum search string
yum info package
yum info "bash*"
yum install [-y] package
yum remove package
yum upgrade [package]

# rpm for RHEL 8 / CentOS 8 & Later

dnf search nginx
dnf info package
dnf info "bash*"
dnf install [-y] package
dnf remove package
dnf upgrade [package]

rpm -qa

# DEB
# APT (Advanced packaging tool)
apt-cache
apt-get

apt-cache search string
apt-get install [-y] package
apt-get remove package			# remove package leaving configuration
apt-get purge package			# remove package, deleting configuration
apt-cache show package			# display information about package
apt-get update					# update the local list of remote packages 
apt-get upgrade [-y]			# upgrade all installed packages

# Can be use:
apt search
apt install
apt purge
apt update
apt upgrade

