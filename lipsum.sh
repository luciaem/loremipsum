#!/bin/bash

for i in {1..5}
do
    lorem=$(curl -s https://www.lipsum.com/feed/xml\?amount\=$lineas | sed -n '/<lipsum>/,/<\/lipsum>/p' | sed -e 's/<lipsum>//g' -e 's/<\/lipsum>//g'
)   
    echo "$lorem" >> loremipsum-$i.txt
    done