#!/bin/bash
# Topic: "printf" Statement

printf "Spalten:\n"
printf "%s\t %s\n" "A" "B" "C" "D"

printf "\n-----------\nNoten:\n"
printf "%-10s: %5.2f\n" "John" 4.5  "Mary"  5.0  "Kevin"  6.0  "Kelly"  3.5
printf "Gewicht in kg: \n"
printf "%-10s: %.2f\n" "John" 74.5  "Mary"  85.0  "Kevin"  86.0  "Kelly"  63.5
