#!/bin/bash

restart () { source ./hey_mercedes.sh hey_mercedes; };

if [ "$1" == "hey_mercedes" ]; then
	echo "Bonjour, comment puis-je vous aider aujourd'hui?";
        read input;
else	echo "Je n'ai pas saisi votre demande" && exit;
fi

if [ "$input" == "weather" ]; then
	source ./weather_api.sh;
	restart;

elif  [ "$input" == "address" ]; then
	source ./address_api.sh;
	restart;

elif [ "$input" == "quoteday" ]; then
	source ./quoteday_api.sh;
	restart;

elif [ "$input" == "bye_mercedes" ]; then
	exit;

else
	echo "Pardon?";
	restart;
fi