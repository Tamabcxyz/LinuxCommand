#!/bin/bash

while true
do
cat << COUT
1. Show disk usage.
2. Show system uptime.
3. Show the users logged into the system. 
COUT
  read -p "What would you like to do? (Enter q to quit.) " CHOICE

  case "$CHOICE" in
    1)
      df
      ;;
    2)
      uptime
      ;;
    3)
      who
      ;;
    q)
      break
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
  echo
done
echo "Goodbye!"
