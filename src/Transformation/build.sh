mainFile="orchestration.py main.py"
Folders=('bin/' 'Jobs' 'Utils')

echo "We are going to rock"

echo "creating bin folder"
mkdir ${Folders[0]:0:3}

echo "Start to copy main.py to /bin"
cp $mainFile ${Folders[0]}

echo "Compressing dependancy and modules files"
zip -r ${Folders[0]}scripts.zip Jobs Utils

echo "Copying modules main.py and config json files to dbfs..."
dbfs cp -r --overwrite bin dbfs:/priyank
dbfs cp -r --overwrite  bin dbfs:/priyank

echo "Removing bin folder"
rm -r ${Folders[0]}