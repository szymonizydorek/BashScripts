#!bin/bash/

read -p "From how many words you want to create acronym?" number

#Validate user's input
if ! [[ "$number" =~ ^[0-9]+$ ]] || [ "$number" -le 0 ]; then
    echo "Please enter a valid positive number."
    exit 1
fi

acronym=""

for (( i=1; i<number; i++ ));do
	read -p "Enter word $i: " word
	first_letter=$(echo "$word" | sed 's/^\(.\).*/\1/' | tr '[:lower:]' '[:upper:]')
	acronym+="$first_letter"
done

echo "The acronym is $acronym"
