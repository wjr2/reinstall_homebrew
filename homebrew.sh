#! /bin/bash

### Get homebrew to re-install my programs
###      Requirements:
###                   BASH
###                   Newline separated list  passed as arg - $ brew list > homebrew.txt
###                   
###
### Written 2014 Oct. 8 by Billy, fdf16862@opayq.com

# get starting time in seconds
START=$(date +%s)

# tell the user what time it is, yo!
echo -e "\nStarting $( date '+%b %d %H:%M:%S') \n"

# if the file of formulae to install exists, use it. Otherwise, abandon ship!
if [ -f $1 ];then

    # check for default settings or that "all" flag is set 
    if [[ -z $2 ]]||[[ "$2" == "all" ]]; then
	# make a counter & an array
	n=0;ar=()
	# read formulae from file and store in an array
	while read; do
	    # append the latest value to the array
	    ar[n]=$REPLY
	    # increment the index counter
	    n=$((n+1))
	done < $1
	# comand string
	str="brew install"
	# loop over array and appending string with formulae
	# ... use the C convention because BASH is kind of a jerk
	for (( i=0; i<=$n ; i++ )); do
	    str+=" "       # add a space
	    str+=${ar[$i]} # append the formula
	done
	
	# tell the user what we're about to do
	echo "Executing command:"
	echo "$str"
	
	# install!
	${str}
	wait
	
    # if "each" flag
    elif [[ "$2" == "each" ]]; then
	echo -e "*** Installing each formula with a separate Homebrew call"
	# read formulae from file and install each
	while read; do
	    echo -e "\nExecuting: brew install $REPLY" 
	    brew install $REPLY
	    wait
	done < $1
	
    # if flag is something else, do nothing and exit.
    else
        echo "Error: 'all' or 'each' flag unclear. Aborting."    
    fi
else 
    echo "Error: pass file from '$ brew list > homebrew.txt' as a parameter. Aborting"
fi

# get the end time in seconds
END=$(date +%s)

# tell the user what time it is again, because clearly they weren't listening. 
echo -e "Finished $( date '+%b %d %H:%M:%S') \n"

# tell the user how long they had to wait before using their machine to do awesomeness 
echo -e "Elapsed time (hours:minutes:seconds):"
echo $((END-START)) | awk '{print int($1/3600)":"int($1/60)":"int($1%60)}'