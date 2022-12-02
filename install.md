# Installation

**NOTICE: my rice will be refactored soon, this will most likely change**

Clone the repository:

```
$ git clone https://github.com/joepigott/dots
```

from here, copy the directories you want into your `.config` directory:

```
$ sudo cp -r [DIRECTORY] ~/.config
```

I have a few absolute paths hard-coded into the rice that you'll need:

## Wallpaper

If you want to use my wallpaper (the purple fractal), download it from one of these links:

[1080p](https://cubeupload.com/im/pigroy/phoenixwallpaper.png)

[4k](https://cubeupload.com/im/pigroy/phoenixwallpaper4k.png)

Place these in `/usr/share/backgrounds/` (if you don't have this directory, make it).

If you want to use your own wallpaper, you can set the path to it in `~/.config/awesome/default/theme.lua` on line 100. I know that directory is a mess, that's what the refactor is for.

## OWM Key

To get the weather widget on Polybar, you'll need to create an account at [OpenWeatherMap](https://openweathermap.org/), obtain an API key, and place it in a file called `~/.owm-key`. 

Next, change the `CITY_NAME` and `COUNTRY_CODE` variables at the top of `~/.config/polybar/weather-plugin.sh` to your city and country.
