# XMind 8 per user install on Linux
[XMind 8](https://www.xmind.net/xmind8-pro) is a free and open source mind mapping program.

This repo contains files needed to do a per user install of XMind 8 (not XMind Zen) on Linux. The user needs sudo root rights to run the setup script (sudo is invoked within the script).

1. First get [Download for Linux](https://www.xmind.net/download/xmind8).

2. Make a subdirectory in your home folder, I use ~/app/xmind8.

3. Extract zip file into this directory.

4. Copy files from this repo into that directory, including overwriting setup.sh.

5. Run the modified setup.sh as your user (not root or sudo root). This will install OpenJDK 8 and extra fonts.

6. Create a symlink from ~/app/xmind8/xmind.sh to ~/bin.

7. Create a symlink from ~/app/xmind8/xmind.png to ~/.local/share/icons.

8. Run xmind from a terminal to confirm it works.

9. Copy xmind.desktop to ~/.local/share/applications. If on Gnome Shell, verify you can now find it.

10. Run XMind 8 by clicking on its icon.

