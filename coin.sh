echo "Welcome"
echo "Coin flip simulator"
declare -A Coin
count=1
hcount=0
tcount=0
randomValue=$(($RANDOM%2+1));
if [ $randomValue == 1 ]
then
        echo "Head";
else
        echo "Tail";
fi
for((i=1;i<22;i++))
do
	randomValue=$(($RANDOM%2+1));
	if [ $randomValue == 1 ]
	then
        	Coin[$i]='H'
	else
        	Coin[$i]='T'
fi
done

for key in "${!Coin[@]}"
do
	if [[ ${Coin[$key]} == 'H' ]]
        then
                ((hCount++))
        else
                ((tCount++))
        fi
done
hper=$(( $hCount*100/20 ))
tper=$(( $tCount*100/20 ))
echo "Percentage of Head is $hper"
echo "Percentage of Tail is $tper"
