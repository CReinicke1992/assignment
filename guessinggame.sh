# File: guessinggame.sh

function guess_func {	

	local num_files=$(ls -1 | wc -l)		
	
	if [[ $2 -eq $num_files ]]
        then
                echo "Congratulations! Your guess is correct."
		let $1=$1+1
        elif [[ $2 -lt $num_files ]]
        then
                echo "Your guess is too low. Try again:"
                read $2
        elif [[ $2 -gt $num_files ]]
        then
                echo "Your guess is too high. Try again:"
                read $2
        fi
}

count=0

echo "How many files are in the current directory?"
read guess

while [[ $count -eq 0 ]]
do	
	guess_func count guess 
done

