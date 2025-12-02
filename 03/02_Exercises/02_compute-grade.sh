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
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
#??
