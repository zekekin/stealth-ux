# Stealth-UX

![Stealth-UX](https://i.imgur.com/IKXD3Qg.png)

Stealth-UX is a dark visual suite that transforms your GalliumOS 3.1 desktop environment.

**Need help?** Here's the [Reddit Communtity Thread](https://www.reddit.com/r/GalliumOS/comments/ixbdmx/stealthux_a_dark_visual_suite_for_galliumos/)

## Install

1. Clone this repo:

        git clone https://github.com/ctklainow/stealth-ux.git ~/stealth-ux/
    
3. Install:

        sudo bash ~/stealth-ux/install.sh

*Note: Your current ~/.bashrc will backed up as ~/.bashrc.obs_backup*

## How to mod stealth-ux (Optional):

Skip to Configure Section(#configure)

#### Copy these corresponding files from greybird-compact dir: /usr/share/themes/Greybird-compact/xfwm4:
- title-1-active.xpm
- top-left-active.xpm
- top-right-active.xpm

(think of .xpm as ASCII masks, layered on top of .png files with the same name)

By using greybird-compact masks, you can change the height of the menu bar in the Dracula theme

#### Next, symlink the appropriate files:
- symlinked title-1-active.xpm to title-2-active.xpm through title-5-active.xpm, 
- symlinked top-left-active.xpm to top-left-inactive.xpm, etc
- symlinked top-right-active.xpm to top-right-inactive.xpm, etc

#### Then install imagemagick:

    sudo apt-get install imagemagick

#### Then convert UX images for the menu bar:

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


### Reference for XFCE icons

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
8. Change the color of the close* images to red using Gimp.


<h2 id="configure">Configure</h2>

After installation is done, follow the steps below to configure the desktop settings.

## Appearance Settings

1. Go into the Start Menu or Left-Alt + M

2. Search and open "Appearance" (Settings > Appearance)

3. Under the Style Tab, find and select "Dracula"

## Icons Settings

4. In the same window, under the Icons Tab, find and select "Papirus-Dark"

5. Close the Appearance Settings

6. Go into the Start Menu, and open the File Manager

7. Go to `Edit` → `Preferences...`. Click on `Side Pane` tab. Under `Side Pane`, look for `Icon Size` and set to `Very Small`.

![thunar-prefecences](https://i.imgur.com/Iu1TIEa.png)

8. Go into Start Menu and open `Settings Manager` → `Panel` → `Items` tab. Select `Notification Area` item and click on `Edit currently selected item` button. Under `Appearance` set the following options:

- Set `Maximum icon size (px)` to `24`
- Uncheck `Show frame`

![xfce4-notification-area](https://i.imgur.com/MopCZBZ.png)

### Change folder colour:

9. Open your terminal and install papirus-folders

        wget -qO- https://git.io/papirus-folders-install | sh

10. Run this command to change folders color to white

        papirus-folders -C white --theme Papirus-Dark

11. Close File Manager windows and reopen to see the colour changes

*You can replace white with any of these colours:*

| Name | Preview | Name | Preview |
|:-----|:-------:|:-----|:-------:|
| **black** | ![folder-black](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-black.svg) ![user-black-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-black-home.svg) ![folder-black-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-black-download.svg) | **blue** | ![folder-blue](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-blue.svg) ![user-blue-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-blue-home.svg) ![folder-blue-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-blue-download.svg) |
| **bluegrey** | ![folder-bluegrey](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-bluegrey.svg) ![user-bluegrey-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-bluegrey-home.svg) ![folder-bluegrey-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-bluegrey-download.svg) | **breeze** | ![folder-breeze](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-breeze.svg) ![user-breeze-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-breeze-home.svg) ![folder-breeze-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-breeze-download.svg) |
| **brown** | ![folder-brown](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-brown.svg) ![user-brown-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-brown-home.svg) ![folder-brown-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-brown-download.svg) | **cyan** | ![folder-cyan](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-cyan.svg) ![user-cyan-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-cyan-home.svg) ![folder-cyan-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-cyan-download.svg) |
| **deeporange** | ![folder-deeporange](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-deeporange.svg) ![user-deeporange-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-deeporange-home.svg) ![folder-deeporange-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-deeporange-download.svg) | **green** | ![folder-green](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-green.svg) ![user-green-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-green-home.svg) ![folder-green-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-green-download.svg) |
| **grey** | ![folder-grey](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-grey.svg) ![user-grey-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-grey-home.svg) ![folder-grey-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-grey-download.svg) | **indigo** | ![folder-indigo](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-indigo.svg) ![user-indigo-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-indigo-home.svg) ![folder-indigo-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-indigo-download.svg) |
| **magenta** | ![folder-magenta](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-magenta.svg) ![user-magenta-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-magenta-home.svg) ![folder-magenta-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-magenta-download.svg) | **nordic** | ![folder-nordic](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-nordic.svg) ![user-nordic-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-nordic-home.svg) ![folder-nordic-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-nordic-download.svg) |
| **orange** | ![folder-orange](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-orange.svg) ![user-orange-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-orange-home.svg) ![folder-orange-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-orange-download.svg) | **palebrown** | ![folder-palebrown](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-palebrown.svg) ![user-palebrown-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-palebrown-home.svg) ![folder-palebrown-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-palebrown-download.svg) |
| **paleorange** | ![folder-paleorange](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-paleorange.svg) ![user-paleorange-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-paleorange-home.svg) ![folder-paleorange-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-paleorange-download.svg) | **pink** | ![folder-pink](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-pink.svg) ![user-pink-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-pink-home.svg) ![folder-pink-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-pink-download.svg) |
| **red** | ![folder-red](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-red.svg) ![user-red-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-red-home.svg) ![folder-red-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-red-download.svg) | **teal** | ![folder-teal](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-teal.svg) ![user-teal-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-teal-home.svg) ![folder-teal-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-teal-download.svg) |
| **violet** | ![folder-violet](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-violet.svg) ![user-violet-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-violet-home.svg) ![folder-violet-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-violet-download.svg) | **white** | ![folder-white](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-white.svg) ![user-white-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-white-home.svg) ![folder-white-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-white-download.svg) |
| **yaru** | ![folder-yaru](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-yaru.svg) ![user-yaru-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-yaru-home.svg) ![folder-yaru-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-yaru-download.svg) | **yellow** | ![folder-yellow](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-yellow.svg) ![user-yellow-home](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/user-yellow-home.svg) ![folder-yellow-download](https://cdn.jsdelivr.net/gh/PapirusDevelopmentTeam/papirus-icon-theme@master/Papirus/48x48/places/folder-yellow-download.svg) |



## Windows Manager Settings

Change the style of the window bars:

12. Go into Start Menu, search for and open "Window Manager" (under "Settings")

13. Choose between "no-border" or "Dracula" or "dracula-compact".

*no-border removes the Title Bar for a sleek look*

*Dracula offers a flat dark look*

#### Tips for no-border:

- Alt + Left Click to move windows around
- Alt + SpaceBar to bring up the menu options for a window
- Under the Window Manager, click the Keyboard Tab, and set the following shortcut keys:
  - Close Window: Alt + Q
  - Tile window to left: Alt + \[
  - Tile window to right: Alt + \]
  - Maximize window: Alt + =
  - Minimize window: Alt + -

## Terminal Settings

14. Open your terminal

15. Right click > Preferences > Colors Tab

16. Click "Load Presets..."

17. Select "Dracula"

18. Close Preferences

19. Open and edit \~/.bashrc file

20. You'll see an environment variable (all caps) in there that looks like:

        OSH_THEME="font"
        
21. Change the value of OSH_THEME to powerline: `OSH_THEME="powerline"`

22. Save and exit .bashrc

23. Reload .bashrc:

        source ~/.bashrc

24. Close and reopen your terminal to see changes

25. Right-click your terminal > Preferences

26. Under Appearance Tab > Uncheck "Use System Font" > and select a Powerline font such as "Source Code Pro for Powerline"

27. Everything should look good now!

## Bonus Settings

Complete the entire look with a few more steps:

### Chromium

1. Open Chromium

2. Go to: `chrome://settings/`

3. Find "Themes" under "Appearance" > Click "Use GTK+"

### Main Taskbar

1. Right-click taskbar

2. Panel > Panel Preferences...

3. Go to Appearance Tab

4. Select None under Style:

5. Reduce Alpha to 0

6. Go to Items and edit as you please, here's a suggestion:

![Panel Preferences](https://i.imgur.com/Rrwejj2.png)

### Hide the windows toolbar 

1. Open "File Manager" 

2. Ctrl + M

### VIM

1. Create theme folder:

        mkdir -p ~/.vim/pack/themes/start

2. Change directories:

        cd ~/.vim/pack/themes/start

3. Clone the target repo:

        git clone https://github.com/dracula/vim.git dracula

4. Create config file:

        touch ~/.vimrc

5. Add the following to \~/.vimrc

        packadd! dracula
        syntax enable
        colorscheme dracula

### VIM Javascript Plugin

![Javascript VIM](https://draculatheme.com/static/img/screenshots/vim.png)

1. Run the following command

          git clone https://github.com/pangloss/vim-javascript.git ~/.vim/pack/vim-javascript/start/vim-javascript

2. Close and reopen VIM to see changes

### Wallpaper

1. Right-click desktop > Desktop Settings...

2. Select stealth_ux_wallpaper.jpg inside \~/stealth_ux
