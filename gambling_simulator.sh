echo "Welcome to Gambling Simulator "
STAKE=100
BET=1
cash=$STAKE
function bet(){
	if [[ $((RANDOM%2)) -eq 1 ]]
	 then
		echo "You win"
		cash=$((cash+$BET))
	else
		echo "You losse"
		cash=$((cash-$BET))
	fi
}
resign=$(($STAKE*50/100))
while [[ $cash -gt $(($STAKE-$resign)) && $cash -lt $(($STAKE+$resign)) ]]
do 
   bet
done
echo "resign with $cash"
