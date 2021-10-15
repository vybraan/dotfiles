#!/bin/bash

mv ~/.config/i3 ~/.config/i3.preVybraan
cp -rf ./i3 ~/.config/

cp -rf ./pics/* ~/Pictures

mv ~/config/polybar/ ~/.config/polybar.preVybraan
cp -rf ./polybar ~/.config/
