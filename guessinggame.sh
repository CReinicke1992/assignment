# File: guessinggame.sh

num_files=$(ls -1 | wc -l)
count=0

echo "How many files are in the current directory?"
read guess

while [[ $count -eq 0 ]]
do
	if [[ $guess -eq $num_files ]]
	then 
		echo "Congratulations, your guess is correct."
		let count=$count+1
	elif [[ $guess -lt $num_files ]]
	then 
		echo "Your guess is too low. Try again."
		read guess
	elif [[ $guess -gt $num_files ]]
	then
		echo "Your guess is too high. Try again."
		read guess
	fi
done

