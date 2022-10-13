#!/bin/bash

echo "Où souhaitez-vous aller?";

read address;

address_url=${address// /+};

URL="?q=$address_url";

curl -s "https://api-adresse.data.gouv.fr/search/${URL}" | jq '.features[0].properties.label';