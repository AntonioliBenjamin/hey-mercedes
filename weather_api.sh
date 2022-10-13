#!/bin/bash

temp=$(curl -s "http://api.weatherapi.com/v1/current.json?key=d1186d38fe664be5bfd122353221210&q=Paris&aqi=no" | jq '.current.temp_c');

echo "$temp° today";