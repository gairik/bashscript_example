## 1. (( )) is arithmatic operations
## 2. () is a subshell

##1. ()

# Eg 1 - multi commands

(pwd;echo "Print my line")
#/home/gairik/Desktop/bash_exersice
#Print my line

# Eg 2 - Also used for array declaration

arr=(what the actual fuck)
echo ${arr[0]}

# Eg 3 - Make new commands 
#newpwd=$(pwd;ls)
#echo $newpwd
#/home/gairik/Desktop/bash_exersice bash_tut1.sh parenthesis_curly.sh parenthesis_parenthesis.sh

#newpwd=$(touch newfile; echo "love this" > newfile; cat newfile)
#echo $newpwd

##
## (()) these are for doing runtime arithmatic expression
##

a=10
b=10

if [[ -z $a || $b ]]
then
    echo $(( $a + $b ))
fi

# you can also write C like code
for (( i=0; i<5; i++)) 
do
    echo $i

done    



## if checking

if (( $a == 10 ))
then 
echo "if checking with (()) \$a "$a
fi