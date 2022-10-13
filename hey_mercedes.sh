#!/bin/bash

restart () { source ./hey_mercedes.sh hey_mercedes; };

if [ "$1" == "hey_mercedes" ]; then
	echo "Bonjour, comment puis-je vous aider aujourd'hui?";
        read input;
else	
	echo "Je n'ai pas saisi votre demande" && exit;
fi

if [ "$input" == "weather" ]; then
	source ./check_connection.sh
# La variable status est crée dans le fichier check_connection.sh	
		if [ "$status" == "online" ]; then
			source ./weather_api.sh;
			restart;
		else
			source ./weather.sh;
			restart;
		fi

elif  [ "$input" == "address" ]; then
	source ./check_connection.sh
		
		if [ "$status" == "online" ]; then
			source ./address_api.sh;
			restart;
		else
			source ./address.sh;
			restart;
		fi

elif [ "$input" == "quoteday" ]; then
	source ./check_connection.sh
		
		if [ "$status" == "online" ]; then
			source ./quoteday_api.sh;
			restart;
		else
			source ./quoteday.sh;
			restart;
		fi

elif [ "$input" == "bye_mercedes" ]; then
	exit;

else
	echo "Pardon?";
	restart;
fi
