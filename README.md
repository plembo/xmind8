# XMind 8 global install on Linux
[XMind 8](https://www.xmind.net/xmind8-pro) is a free and open source mind mapping program.

This repo contains files needed to do a per user install of XMind 8 (not XMind Zen) on Linux. The user needs sudo root rights to run the setup script (sudo is invoked within the script).

Thanks to [Scott Lowe](https://blog.scottlowe.org) for his blog post, [Installing XMind 8 on Fedora 27](https://blog.scottlowe.org/2017/12/15/installing-xmind-8-on-fedora-27/).

1. First get the [XMind 8 Download for Linux](https://www.xmind.net/download/xmind8).

2. Make an /opt/xmind directory.

3. Extract zip file into this directory.

4. Copy files from this repo into that directory, including overwriting setup.sh.

5. Run the modified setup.sh as root or sudo root. This will install OpenJDK 8 and extra fonts.

6. Create a symlink from /opt/xmind/xmind.sh to /usr/local/bin.

7. Create a symlink from /opt/xmind/xmind.png to /usr/share/icons.

8. Create ~/.config/xmind/workspace in your home directory.

9. Copy /opt/xmind/XMind_amd64/configuration to ~/.config/xmind.

10. Copy /opt/xmind/XMind_64/p2 to ~/.config/xmind.

11. Edit /opt/xmind/XMind_64/XMind.ini to change paths in lines 2 and 4 as follows:
    ```
    ./configuration to @user.home/.config/xmind/configuration
    ../workspace to @user.home/.config/xmind/workspace
    ```

12. Run xmind from a terminal to confirm it works.

13. Copy xmind.desktop to ~/.local/share/applications. If on Gnome Shell, verify you can now find it.

14. Run XMind 8 by clicking on its icon.

