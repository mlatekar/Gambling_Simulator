echo "Welcome to Gambling Simulator "
STAKE=100
BET=1
cash=$STAKE
DAY=20
totalAmount=0
declare -A playingDay
function bet()
{
	if [[ $((RANDOM%2)) -eq 1 ]]
	 then
#		echo "You win"
		cash=$((cash+$BET))
	else
#		echo "You losse"
		cash=$((cash-$BET))
	fi
}
resign=$(($STAKE*50/100))
function totalDay()
{
for ((i=1; i<=$DAY; i++))
	do
    cash=$STAKE
	   while [[ $cash -gt $(($STAKE-$resign)) && $cash -lt $(($STAKE+$resign)) ]]
	    do 
 		  bet
		 done
	     playingDay[playingDay$i]=$(($STAKE-$cash))
   		totalAmount=$((totalAmount+${playingDay[playingDay$i]}))	
	     echo "DAY $i  : "${playingDay[playingDay$i]}
	done
}
totalDay
echo "20 Day amount with win/loose : " $totalAmount
