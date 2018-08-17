#!/bin/bash

echo $1

link=https://en.wikipedia.org/wiki/$1

echo entry: $wiki_entry link: ${link}

curl -s $link > ./hold.txt
html2text hold.txt > query.txt
cat query.txt | more

