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
