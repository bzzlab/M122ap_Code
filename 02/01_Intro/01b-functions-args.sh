#!/bin/bash
# Topic: Function arguments

function f1 {
    args=("$@")
    echo Number of arguments: $#
    echo 1st argument: ${args[0]}
    echo 2nd argument: ${args[1]}
    echo 3rd argument: ${args[2]}
    echo 4th argument: ${args[3]}
}
f1 "String1" 14 15.5 "String2"
f1 "122" "Abläufe mit Scripts autom." "IA21a,b" 08.00 12.00
