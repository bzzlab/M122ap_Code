#!/bin/bash
#
ls img/* | awk '{print "<img src=\""$1"\" width=\"60%\" height=auto />"}'
