# node-blinkt
A Node.js Library to Interact with [Blinkt](https://shop.pimoroni.com/products/blinkt)

# Install

```bash
npm install node-blinkt
```

# Usage

```js
var Blinkt = require('node-blinkt'),
	leds = new Blinkt();

leds.setup();
leds.clearAll();
leds.setAllPixels(0, 156, 0, 0.1);
leds.sendUpdate();
```

# Methods

## setup()
Connects to the GPIO and sets the GPIO pin modes. Must be called before any other commands.

## setup(dat, clk)
Connects to an alternative set of GPIO pins and sets their modes. Can be called instead of the setup() function if you have wired blinkt up to alternative raspberry pi pins. The default values are 23 and 24 respectively.

## clearAll()
Clears the pixel buffer. This is the same as setting all pixels to black. You must also call sendUpdate() if you want to turn Blinkt! off.

## setPixel(pixelNum, red, green, blue, brightness)
Sets the specififed pixel to the passed rgb and brightness level. The pixelNum is
an integer between 0 and 7 to indicate the pixel to change.

## setBrightness(pixelNum, brightness)
Sets the brightness level between 0.0 (off) and 1.0 (full brightness) for the specified pixelNum.
The pixelNum is an integer between 0 and 7 to indicate the pixel to change.

## setAllPixels(red, green, blue, brightness)
Sets all pixels to the passed rgb and brightness level.

## sendUpdate()
This method is the most important. You can set pixels colours as much as you want but they
will not update until you call this method.

# Using alternative IoT.js runtime

IoT.js is an alternate JavaScript runtime powered by JerryScript engine
targeting more constrained devices.

Usage:

```sh
make run/iotjs
```

rm -rf node-blinkt

[![web-of-things-agriculture-20180712rzr.webm](https://s-opensource.org/wp-content/uploads/2018/07/web-of-things-agriculture-20180712rzr.gif)](https://player.vimeo.com/video/279677314#web-of-things-agriculture-20180712rzr.webm "Video Demo")

[![iotjs-wiringpi](https://pbs.twimg.com/ext_tw_video_thumb/1019945702791766017/pu/img/bbbNf-HJR2FkUb5l.jpg)](https://twitter.com/TizenHelper/status/1019945989388546048# "blinkt-node")


# Copyright and License
All works are copyright Irrelon Software Limited. You may use this project under any open-source
license that you wish e.g. (MIT, GPL etc).
