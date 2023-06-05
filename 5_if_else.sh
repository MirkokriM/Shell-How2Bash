#!/bin/bash
echo "Enter a number:"
read number
if ((number < 10)); then
  echo "The number is less than 10."
else
  echo "The number is greater than or equal to 10."
fi