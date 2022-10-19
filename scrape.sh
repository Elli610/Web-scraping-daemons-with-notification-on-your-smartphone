#!/bin/bash

url="https://ravennode1664983574971.app.runonflux.io/"
curl $url > file.txt
block_count="$grep -o -P '(?<=block count:),*(?=</div><div>block hash:)' file.txt)"
last_block_hash="$grep -o -P '(?<=block hash:),*(?=</div><div>block timestamp)' file.txt)"

echo $block_count
echo $last_block_hash

