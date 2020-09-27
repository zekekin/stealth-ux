## How I made the Dracula-compact theme

#### Copy these corresponding files from greybird-compact dir: /usr/share/themes/Greybird-compact/xfwm4:
- title-1-active.xpm
- top-left-active.xpm
- top-right-active.xpm

(think of .xpm as ASCII masks, layered on top of .png files with the same name)

By using greybird-compact masks, I effectively change the height of the menu bar in the Dracula theme

#### Next, I symlinked the appropriate files:
- symlinked title-1-active.xpm to title-2-active.xpm through title-5-active.xpm, 
- symlinked top-left-active.xpm to top-left-inactive.xpm, etc
- symlinked top-right-active.xpm to top-right-inactive.xpm, etc

#### Then installed imagemagick:

    sudo apt-get install imagemagick

#### Then converted UX images for the menu bar:

    sudo convert close-active.png -alpha on -resize 70% close-active.png

    // running this function replaces current close-active.png with a modified close-active.png that's 70% of the original size, final variable is the new file name (I made it the same as the original)

Run convert on all title bar buttons:
- close-active
- close-inactive
- close-prelight
- close-pressed
- hide-active
- hide-inactive...etc
- maximize-active
- maximize-inactive...etc


### References

https://forum.xfce.org/viewtopic.php?id=9312


    // Bash command

    for name in `find . -maxdepth 1 -type f -name "*.xpm"`; do convert "$name" -alpha on -scale 200% $name; done
    for name in `find . -maxdepth 1 -type f -name "*.png"`; do convert "$name" -alpha on -resize 200% $name; done


### From forum post

1. In the folder /usr/share/themes create a new theme 'mytheme' by copying the theme 'Mint-X'
2. Install imagemagick (sudo apt-get install imagemagick) to get the linux command convert
3. Go to folder /usr/share/themes/mytheme/xfwm4
4. Modify title* and top* files with convert command as suggested by sixsixfive with scale 200%
5. Modify close*, hide* and maximize* files with convert command with scale 150%
6. Modify file /usr/share/themes/mytheme/xfwm4/themerc with following options :
             button_offset=15
             button_spacing=2
             maximized_offset=10
7. Go to Parameters --> Window manager (I am not sure about the english name as I am using french version) and change the theme to 'mytheme'; I also changed the font of the title to 20.
8. I also changed the color of the close* images to red using Gimp.



