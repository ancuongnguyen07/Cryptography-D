#! /bin/bash
FOLDER=assignment-$1

mkdir $FOLDER 2>/dev/null
rm -r ./template/build 2>/dev/null
cp ./template/* $FOLDER
cd $FOLDER || exit 1
mkdir tex
cd tex || exit 1
for ((i = 1; i <= $2; i++));
do
    touch exercise-$i.tex
done
cd ../ || exit 1