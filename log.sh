#!/usr/bin/env bash
# Usage: ./log.sh "Description of action" "https://link"
cd ~/Documents/execution-log/
today=$(date '+%Y-%m-%d')
printf "| %s | %s | %s |\n" "$today" "$1" "$2" >> execution-log.md
git add -A
git commit -m "Log $today"
git push
echo "Logged and pushed. Done is proof I exist."
