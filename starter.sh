#! /bin/bash
FOLDER=$1

mkdir $FOLDER 2>/dev/null
rm -r ./template/build 2>/dev/null
cp ./template/* $FOLDER
cd $FOLDER
mkdir tex
cd tex
for i in {1..$2}
do
    touch exercise-$i.tex
done
cd ../