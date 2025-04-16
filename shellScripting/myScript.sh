#!/bin/sh

Directory="/home/tolen/Documents/tolen"
if [ -d "$Directory" ]; then    
    echo "Directory not exit"
    rmdir $Directory
else
    echo "Directory not exit"
fi

ls /home/tolen/Documents/

