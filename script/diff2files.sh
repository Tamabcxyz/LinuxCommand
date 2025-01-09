#description: find and display line in file1 not in file2
#script_name: diff2files.sh
#author: tam3t8909
#use: diff2files.sh file1 file2
#!/bin/bash
FILES1=$(realpath $1)
FILES2=$(realpath $2)
FILES1_NAME=${FILES1##*/}
FILES2_NAME=${FILES2##*/}

# echo $FILES1
# echo $FILES2
MAX_LINE_FILES2=$(cat $FILES2 | wc -l)

if [ ! -e $FILES1 ]; then
    echo "$FILES1_NAME does not exist!"
fi
if [ ! -e $FILES2 ]; then
    echo "$FILES2_NAME does not exist!"
fi

for line1 in $(cat "$FILES1"); do
    i=0
    while IFS= read -r line2; do
        if [ "$line1" != "$line2" ]; then
            if [ $((i+1)) -eq $MAX_LINE_FILES2 ]; then
                echo "Not found $line1 in $FILES2_NAME"
                i=0
            fi
            i=$((i + 1))
            # echo "i=$i   max=$MAX_LINE_FILES2"
            continue
        fi
        # echo "Found $line1 in $FILES2_NAME"
        break
    done < "$FILES2"
done
