#!/bin/bash

echo "Où souhaitez-vous aller?";
read address;

if [ "$address" == "Paris" ]; then
	echo "23 avenue Henri Martin, Paris"

elif [ "$address" == "Marseille" ]; then
	echo "34, boulevard Charles-Livon, Marseille";

elif [ "$address" == "Lyon" ]; then
	echo "23, avenue berthelot, Lyon"
else
	echo "Je ne connais pas cette adresse"
fi
