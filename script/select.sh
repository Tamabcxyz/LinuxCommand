#!/bin/bash
# PS0 The value of this parameter is expanded and displayed by interactive shells after reading a command and before the command is executed.
# PS1 (Primary Prompt String): This is the variable that defines the appearance of the main shell prompt (display in head of terminal)
# PS2 (Secondary Prompt String): This variable defines the appearance of the prompt when the shell expects more input.
# PS4 (Debug Prompt String): This is used for debugging purposes, especially when you enable shell debugging with the -x option
PS3="Select your option:" #PS3 is set to the prompt displayed to the user when the select menu is shown
declare -r options=("Option 1" "Option 2" "Option 3" "Quit")
select choice in "${options[@]}"
do
case $choice in
    "Option 1")
        echo "You selected Option 1."
        ;;
    "Option 2")
        echo "You selected Option 2."
        ;;
    "Option 3")
        echo "You selected Option 3."
        ;;
    "Quit")
        echo "Exit."
        break
        ;;
    *)
        echo "Invalid option. Please select a valid option."
        ;;
esac
done