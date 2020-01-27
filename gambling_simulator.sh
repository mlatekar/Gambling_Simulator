echo "Welcome to Gambling Simulator "
STAKE=100
BET=1
cash=$STAKE
if [[ $((RANDOM%2)) -eq 1 ]]
	then
	echo "You win"
	((cash++))
else
	echo "You losse"
	((cash--))
	fi
echo $cash
