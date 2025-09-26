# Detecting Other OSes in GRUB (Arch Linux)

Ensure `os-prober` is installed for automatic OS detection.

1. **Install `os-prober`:**

```bash
sudo pacman -S os-prober
```

2. **Enable OS detection in GRUB:**
   * Edit `/etc/default/grub`
   * Add or uncomment:

```bash
GRUB_DISABLE_OS_PROBER=false
```

3. **Regenerate GRUB config:**

```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

4. **Reboot:** GRUB menu should now list Arch Linux + detected operating systems (e.g., Windows Boot Manager).
