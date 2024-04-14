#!/bin/bash

rm -rf /home/neray/.config/alacritty/alacritty.toml
alacritty migrate
rm -rf /home/neray/.config/alacritty/alacritty.yml
sed -i '/history/d' /home/neray/.config/alacritty/alacritty.toml
sed -i '/multiplier/d' /home/neray/.config/alacritty/alacritty.toml
