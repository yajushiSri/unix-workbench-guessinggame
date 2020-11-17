#!/usr/bin/env bash
# Stores the count of files in the working directory
filesCount=$(ls -1 | wc -l)
# Prompts to read user input
function userGuessPrompt {
    echo -e "\e[94m*********************GUESS THE COUNT!*******************************\e[0m"
	echo "Hello! How many files are there in the current directory? Take a guess..."
	read userGuessInput
}

userGuessPrompt
# runs until the user input and file count are equal
while [[ $filesCount -ne $userGuessInput ]]
do
	if [[ $filesCount -gt $userGuessInput ]]
	then
		echo -e "\e[91mOops! There are more files than $userGuessInput. Try again when prompted...\e[0m"
	else
		echo -e "\e[91mOops! There are fewer files than $userGuessInput. Try again when prompted...\e[0m"
	fi
	userGuessPrompt
done

echo -e "\e[92mCongratulations on the correct guess! There are indeed $userGuessInput files in the current directory.\e[0m"

