#!/bin/bash
function header {
    printf "\n%-3s %s %22s %11s %9s\n" \
      "ID" "COURSE NAME" "LEVEL" "FROM/TO" "ROOM"
    echo "------------------------------------------------------------"
}

function item() {
    p=("$@")
    printf "%3d %20s %7s %9s-%5s %5s\n" \
      ${p[0]} ${p[1]} ${p[2]} ${p[3]} ${p[4]} ${p[5]}
}

header

item 122 "Abläufe_mit_Scripts_autom." "IM22b" 08.35 12.00 "H133"
item 165 "NoSQL-Datenbanken_einsetz." "IM22a" 13.50 15.00 "H100"
