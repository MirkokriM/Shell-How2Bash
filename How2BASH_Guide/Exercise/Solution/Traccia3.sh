#!/bin/bash

echo "Inserisci la temperatura in gradi Celsius:"
read celsius

fahrenheit=$((celsius * 9/5 + 32))

echo "La temperatura in gradi Fahrenheit è: $fahrenheit"