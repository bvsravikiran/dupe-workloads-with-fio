FILENAME_PREF=dup
MAX_SIZE=21
L=1
LL=1
for ((i=$LL; i<=$MAX_SIZE; ))
do
    for((j=0; j<=100; j=j+10))
    do
        echo "--------------------------------------------"
        echo "size: ${i}g -- dedupe_percentage: $j"
        #fio --name=${FILENAME_PREF}_${i}_${j} --size=${i}g --rw=write --dedupe_percentage=$j
        #echo
        #sync
    done
    TEMP=$LL
    i=`expr $LL + $L`
    L=$TEMP
    LL=$i
done