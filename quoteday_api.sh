#!/bin/bash

quote=$(curl -s https://zenquotes.io/api/quotes);

echo $quote > test.json

echo $(jq '.[0].q' test.json);
echo $(jq '.[0].a' test.json);

rm test.json;