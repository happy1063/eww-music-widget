Minimal music widget for **EWW** with album cover, title, artist and media controls.

![Preview](assets/preview.png)

## ✨ Features
- Cover art (cached)
- Track title + artist
- Play / Pause / Next / Previous
- Lightweight and fast

## 📦 Dependencies
```bash
sudo pacman -S eww playerctl curl ttf-jetbrains-mono-nerd
```

## 🧩 Installation

### 🛠 Manual setup

1. Clone repository:
```bash
git clone https://github.com/happy1063/eww-music-widget ~/.config/eww/music-widget
```

2. Add to `~/.config/eww/eww.yuck`
```
(include "music-widget/eww.yuck")
```

3. Make scripts executable:
```bash
chmod +x ~/.config/eww/music-widget/scripts/*.sh
```

> **Note:** Make sure the following dependencies are installed before proceeding.

## ▶ Usage
```
eww open music
```

## 🧪 Tested on
- Arch Linux
- bspwm
- Spotify, Firefox, VLC

<picture>
  <source media="(prefers-color-scheme: dark)"
    srcset="https://api.star-history.com/svg?repos=happy1063/eww-music-widget&type=Date&theme=dark" />
  <source media="(prefers-color-scheme: light)"
    srcset="https://api.star-history.com/svg?repos=happy1063/eww-music-widget&type=Date" />
  <img alt="Star History Chart"
    src="https://api.star-history.com/svg?repos=happy1063/eww-music-widget&type=Date" />
</picture>
