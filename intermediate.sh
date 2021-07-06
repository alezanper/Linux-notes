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

