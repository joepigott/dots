# Installation

Clone the repository:

```
$ git clone https://github.com/joepigott/dots
```

From here, copy the directories you want into your `.config` directory:

```
$ sudo cp -r [DIRECTORY] ~/.config
```

I have a few absolute paths hard-coded into the rice that you'll need:

## Wallpaper

If you want to use my wallpaper (the fractal), download it from one of 
these links:

[1080p](https://cubeupload.com/im/pigroy/mandelbrot1080.png)

[4k](https://cubeupload.com/im/pigroy/mandelbrot4k.png)

Place these in `/usr/share/backgrounds/` (if you don't have this directory, 
make it).

If you want to use your own wallpaper, you can set the path to it in 
`~/.config/awesome/default/theme.lua` near the bottom.

## Weather Widget

The widget uses `weather-text` which you can get from 
[here](https://github.com/joepigott/weather-text).
