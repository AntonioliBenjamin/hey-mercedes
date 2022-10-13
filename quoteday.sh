#!/bin/bash

quoteList=("Isn't everyone a part of everyone else?" "I have seen the future and it doesn't work." "Storms make oaks take deeper root.");

echo "${quoteList[RANDOM%2]}";
