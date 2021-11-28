#! /bin/bash
  
# Prompt the user to enter in a sentence or phrase and then allow them to select whether
 they want this to be formatted in all Upper case or Lower case.

read -p "Enter in your sentence, word or phrase: " WORD
read -p "Enter 1 to change the case to UPPER or 2 to change the case to LOWER: " CASE

# Here could use a CASE statement to ensure only "1" or "2" is selected.

if [ "$CASE" -eq "1" ]
then
UPPER_RES=$(echo "$WORD" | tr [:lower:] [:upper:])
echo "$UPPER_RES"

elif [ "$CASE" -eq "2" ]
then
LOWER_RES=$(echo "$WORD" | tr [:upper:] [:lower:])
echo "$LOWER_RES"
else
echo "Please select either "1" for upper or "2" for lower."
fi
