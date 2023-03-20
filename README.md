# XMind 8 user install on Linux
[XMind 8](https://www.xmind.net/xmind8-pro) is a free and open source mind mapping program.

The source code and license for XMind 8 can be found [here](https://github.com/xmindltd/xmind).

**Note that [XMind 8](https://flathub.org/apps/details/net.xmind.XMind8) is also available as a flatpak from Flathub. If you're on a compatible
platform, installing that flatpak will probably be preferrable to the method described here. The requisite JRE 8 is bundled in the flatpak, as well as all
the files and configuration needed to install it as a desktop application.**

This repo contains the extra files (not the XMind 8 binaries) needed to do a local install of XMind 8 (not XMind Zen) for a  Linux desktop.

Thanks to [Scott Lowe](https://blog.scottlowe.org) for his blog post, [Installing XMind 8 on Fedora 27](https://blog.scottlowe.org/2017/12/15/installing-xmind-8-on-fedora-27/).

Note: XMind 8 requires JRE 8, it will not work with earlier or later versions. Either the OpenJDK 8 or Oracle Java 8 releases will work. The path for JAVA_HOME provided in ```xmind.sh``` assumes the standard install path in most Linux distributions. [I advise using Oracle Java 8.](https://docs.datastax.com/en/jdk-install/doc/jdk-install/installOracleJdkDeb.html)

I have changed this recipe to assume the application is being installed to the user's home directory.

1. First get the [XMind 8 Download for Linux](https://www.xmind.net/download/xmind8).
2. Make a ~/.local/xmind8 directory.
3. Extract the xmind-8-update9-linux.zip file into this directory.
4. Download xmind.sh, xmind.desktop and xmind.xpm from this repo into that directory.
5. Install OpenJDK 8 and extra fonts as root.
6. Make a ~/.local/share/fonts/truetype/xmind directory.
8. Copy the fonts from ~/.local/xmind8/fonts to that new fonts directory.
9. Run fc-cache -f as user.
10. Make xmind.sh executable. Create a symlink from ~/.local/xmind8/xmind.sh to ~/.local/bin/xmind. `ln -s ~/.local/xmind8/xmind.sh ~/.local/bin/xmind`
11. Copy xmind.xpm to ~/.local/share/icons.
12. Create ~/.config/xmind/workspace.
13. Recursive copy (```cp -r```) ~/.local/xmind8/XMind_amd64/configuration to ~/.config/xmind. `cp -r ~/.local/xmind8/XMind_amd64/configuration ~/.config/xmind`
14. Recursive copy (```cp -r```) /.local/xmind8/XMind_amd64/p2 to ~/.config/xmind. `cp -r ~/.local/xmind8/XMind_amd64/p2 ~/.config/xmind`
15. Edit ~/.local/xmind8/XMind_64/XMind.ini to change paths in lines 2 and 4 as follows:
    ```
    ./configuration to @user.home/.config/xmind/configuration
    ../workspace to @user.home/.config/xmind/workspace
    ```
12. Run xmind from a terminal to confirm it works.
13. Copy xmind.desktop to ~/.local/share/applications. If on Gnome Shell, verify you can now find it.
14. Run XMind 8 by clicking on its icon.
