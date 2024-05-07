#!/bin/bash

errorfile="create.err"

sudo groupadd test_group >"$errorfile" 2>&1
sudo useradd -G test_group test_user >>"$errorfile" 2>&1

error_file_size=$(stat -c%s "$errorfile")

if [ "$error_file_size" -gt 0 ]; then
    echo "Error:"
    cat "$errorfile"
    rm "$errorfile"
    exit 1
fi

rm "$errorfile"
echo "Groups and users created successfully."
exit 0

