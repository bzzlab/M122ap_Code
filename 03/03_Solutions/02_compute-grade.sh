#!/bin/bash
:<<'TASK'

Programmieren Sie ein Bash-Script auf Basis des Ablaufdiagramms,
welcher die Note (Grade) auf Basis der Punktzahl ermittelt.

                          ┌───────────────────────┐
                          │      Start Script     │
                          └──────────┬────────────┘
                                     │
                                     ▼
                     ┌────────────────────────────────┐
                     │ "Enter a number..."            │
                     │ use variable: score            │
                     └────────────────────────────────┘
                                           │
                                           ▼
                     ┌──────────────────────────────────────────────┐
                     │ when score >= 60 and score <= 100            │
                     └──────────┬────────────────────────┬──────────┘
                                │True                    │False
                                ▼                        ▼
              ┌──────────────────────────────────────┐  ┌─────────────────────────────────────┐
              │ Nested if on score (grading logic):  │  │ when score < 1 or score > 100       │
              │ - <80 → B-                           │  │ → print "Please enter value 1–100"  │
              │ - ≤85 → B                            │  └─────────────────────────────────────┘
              │ - ≤90 → B+                           │  ┌─────────────────────────────────────────┐
              │ - ≤95 → A                            │  │ when score < 60                         │
              │ - else → A+                          │  │ → print "Minimum score required is 60!" │
              └──────────────────────────────────────┘  └─────────────────────────────────────────┘
                                │
                                ▼
                         ┌──────────────┐
                         │   End Script │
                         └──────────────┘

TASK


#
read -p "Enter a number (1-100) : " score  #??
if [[ $score -ge 60 && $score -le 100 ]]; then #??
  if [[ $score -lt 80 ]]; then #??
    echo "You got B-" #??
  elif [[ $score -le 85 ]]; then #??
    echo "You got B" #??
  elif [[ $score -gt 85 && $score -le 90 ]]; then #??
    echo "You got B+" #??
  elif [[ $score -gt 90 && $score -le 95 ]]; then #??
    echo "You got A" #??
  else #??
    echo "You got A+" #??
  fi #??
else #??
  if [[ $score -lt 1 || $score -gt 100 ]]; then #??
    echo "Please enter a value between 1 and 100!" #??
  fi #??
  if [[ $score -lt 60 ]]; then #??
    echo "Minimum score required is 60!" #??
  fi #??
fi #??
