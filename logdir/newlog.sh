## Log updater - We believe in a hypothetical system, 1 new logfile is created everyday.
# so out goal is to create a new logfile in the name of file1.log. 
# However, the old logs are also important so we need to backup the old log files as well. 
# logfiles exists in the format of file1.log, file2.log, file3.log ....

# Solution - increse the number of logfile by +1 and then add the new logfile as file1.log 

readarray FILES < <(find . -type f -name "*.log") 

NEWFILES=( $(printf "%s\n" ${FILES[@]} | sort -r) )

#echo ${NEWFILES[@]}
for file in ${NEWFILES[@]}; do

 if [[ $file =~ [0-9] ]]; then
    file=$(basename $file) 
    NUM=$(echo $file | grep -oE 'seq[0-9]' | grep -oE '[0-9]')
    echo $NUM
    updated_logfile="what_the_fuck_month1_day2_seq$(( $NUM + 1 )).log"
    echo $updated_logfile
    mv $file $updated_logfile
 fi
done

echo "file1" > what_the_fuck_month1_day2_seq1.log