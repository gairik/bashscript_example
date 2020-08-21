HARP_APK=${HARP_APK[@]}
BUILD_FOLDER=build_files

#[] is generally used for variables checking if exist or file exists: Example - if [ -e $FILE_NAME ]

if [ ! -n $BUILD_FOLDER ]
then
    BUILD_FOLDER="."
else
    echo "BUILD_FOLDER set to" $BUILD_FOLDER
fi

readarray HARP_APK <<< "$(find $BUILD_FOLDER -name "*.apk")"

BUILD_FILES=destination

# [[]] brackets are updated bracket

if [[ ! -d $BUILD_FILES ]]
then
    echo "folder does not exists!"
    mkdir destination
else
    echo "folder exists"
fi


for char in "${HARP_APK[@]}"
do  
    cp $char destination/
done