#! /bin/bash

### Get homebrew to re-install my programs
###      Requirements: 
###                   python
###                   homebrew.txt passed as arg -- $ brew list > homebrew.txt
###                   homebrew_command.py
###
### Written 2014 Oct. 8 by Billy, fdf16862@opayq.com

START=$(date +%s);
echo -e "\nStarting $( date '+%b %d %H:%M:%S') \n"

if [[ -f $1 ]]; then
    cmd=`python homebrew_command.py $1`
else 
    echo "Error: pass file from '$ brew list > homebrew.txt' as a parameter. Aborting"
fi

echo "Executing command:"
echo -e "${cmd} \n"
wait

END=$(date +%s)
echo -e "Finished $( date '+%b %d %H:%M:%S') \n"
echo -e "Elapsed time (hours:minutes:seconds):"
echo $((END-START)) | awk '{print int($1)":"int($1/60)":"int($1%60)}'