## How I made this theme compact

copied corresponding files from greybird-compact dir, including:
title-1-active.xpm
top-left-active.xpm
top-right-active.xpm

(think of .xpm as ASCII masks, layered on top of .png files with the same name)


and then symlinked them to title-2 through title-5, top-left-inactive, top-right-inactive, etc

sudo apt-get install imagemagick

// running this function replaces current close-active.png with a modified close-active.png that's 70% of the original size, final variable is the new file name (I made it the same as the original)
sudo convert close-active.png -alpha on -resize 70% close-active.png

run convert on all title bar buttons:
close-active
close-inactive
close-prelight
close-pressed

hide, maximize


finally, change font size in window manager to match the new smaller title bar height

### References

https://forum.xfce.org/viewtopic.php?id=9312


// Bash command

for name in `find . -maxdepth 1 -type f -name "*.xpm"`; do convert "$name" -alpha on -scale 200% $name; done
for name in `find . -maxdepth 1 -type f -name "*.png"`; do convert "$name" -alpha on -resize 200% $name; done



1- In the folder /usr/share/themes create a new theme 'mytheme' by copying the theme 'Mint-X'
2- Install imagemagick (sudo apt-get install imagemagick) to get the linux command convert
3- Go to folder /usr/share/themes/mytheme/xfwm4
4- Modify title* and top* files with convert command as suggested by sixsixfive with scale 200%
5- Modify close*, hide* and maximize* files with convert command with scale 150%
6- Modify file /usr/share/themes/mytheme/xfwm4/themerc with following options :
             button_offset=15
             button_spacing=2
             maximized_offset=10
7- Go to Parameters --> Window manager (I am not sure about the english name as I am using french version) and change the theme to 'mytheme'; I also changed the font of the title to 20.
8- I also changed the color of the close* images to red using Gimp.



