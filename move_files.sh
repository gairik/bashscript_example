#FILES=( ${FILES[@]} )

readarray FILES <<< "$(find . -name "*.txt")";
mkdir -p newfolder

for file in ${FILES[@]} 
do
    cp $file newfolder/
    echo $file

done    