# bashscript_example
```
(( )) [[ ]] [ ] { }
echo $(var//Z/L}
with all the variations: ${var# and ${var%
as well as some recent addition: ${var^^} and ${var,,}
COMMAND LINE EDITOR: while typing in the terminal, use CTRL+A, CTRL+E, CTRL+K, and so on.
& wait jobs trap $!

difference between $* $@ "$@"
difference between quotes!!! ```" ' "
$(command) vs `command`
cmd || echo ERROR  echoes ERROR if cmd fails, and it fails if $? is NON-ZERO!

but if you want to check $?, then:

cmd
(( $? )) && echo ERROR

for a in {0..9} ; do echo $a ; done

for a in * ; do echo $a ; done

echo anything_{0..9}
echo anything_{0..9}{a..z}

A=ABCDEFG
echo ${A:3}
echo ${A:3:2}
${A:3:((${#A}-4))}

A=(fuck this world)  # <-- ARRAY!
echo $A
echo ${A[@]}
echo ${A[@]:1}

then, arrays have indices:

A=(one two three)
echo ${A[@]} # values
echo ${!A[@]} # indices


echo ${!A[@]} # returns 0 1 2
unset A[1] # remove second element

echo ${!A[@]} # returns 0 2

so, the "index" of an array is actually not a numerical index... but rather a kind of a "key" of an associative array where indexes are STRINGS of ordinal numbers.
this becomes more clear when you explicitly define associative arrays:

declare -A MyHeroes
MyHeroes["Rocco Siffredi"]=33
MyHeroes["John Holmes"]=24
MyHeroes[myself]=40


echo ${MyHeroes[@]}
echo ${!MyHeroes[@]}

unset MyHeroes["John Holmes"]
echo ${MyHeroes[@]}
echo ${!MyHeroes[@]}

"append" operators: arr2+=(arr1)
INTEGER numbers (like in (( )))

Bash pitfalls
http://mywiki.wooledge.org/BashPitfalls#for_i_in_.24.28ls_.2A.mp3.29

Bracket uses
https://stackoverflow.com/questions/2188199/how-to-use-double-or-single-brackets-parentheses-curly-braces

```
