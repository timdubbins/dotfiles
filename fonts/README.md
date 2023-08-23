## Installing a new font (linux)

- grab a new font ([nerd fonts](hhtps://nerdfonts.com/font-downloads))
- make sure we have the fontconfig package installed on the sytem
- unzip the new font in ~/.local/share/fonts/nerd-fonts (create parent directories if needed and rename nerd-fonts to whatever is suitable for you)
- reload the fonts with `fc-cache -vf`  or reboot
- check the font has been sourced with `fc-match YourFontName -a`
