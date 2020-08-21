: << 'comment'
(( )) [[ ]] [ ] { }

comment

#
# {} is used for evaluation

var="abcde"
a=apple

#Eg1 - substitution
echo ${var/de/12}

#Eg2 - truncate
echo ${var%d*}

#Eg3 - default value
default='bekar Tesnion';unset var;echo ${var:-$default}

#Eg4 - Expansion of variables
echo foo{ee,dd}
#fooee foodd
echo "$a{ee,dd}"
#appleee appledd


