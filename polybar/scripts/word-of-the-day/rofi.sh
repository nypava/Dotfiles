DIR=~/.config/polybar/scripts/word-of-the-day
meaning=$(cat $DIR/data.json | python3 -c "import sys, json; print(json.load(sys.stdin)['meaning'])")


word=$(cat $DIR/data.json | python3 -c "import sys, json; print(json.load(sys.stdin)['word'])")

example=$(cat $DIR/data.json | python3 -c "import sys, json; print(json.load(sys.stdin)['example'])")


rofi -e "$meaning  $example" -theme $DIR/theme.rasi -sep ";" -p $word
