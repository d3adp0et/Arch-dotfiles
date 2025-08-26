# ProtonVPN Setup on Arch Linux

## Install ProtonVPN
```bash
sudo pacman -S proton-vpn-gtk-app
```

## Fix DNS with systemd-resolved
Enable and configure `systemd-resolved` for proper DNS handling:

```bash
sudo systemctl enable --now systemd-resolved
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
```

## Launch ProtonVPN
You can start the GUI with:
```bash
proton-vpn-gtk-app
```
