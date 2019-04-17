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


First you need to install iotjs from source or precompiled package:

* https://iotjs.net
* https://github.com/rzr/webthing-iotjs/wiki/IotJs

Usage:

```sh
git clone --depth 1 https://github.com/Irrelon/node-blinkt ; cd node-blinkt
make start
```

[![iotjs-wiringpi](https://pbs.twimg.com/ext_tw_video_thumb/1019945702791766017/pu/img/bbbNf-HJR2FkUb5l.jpg)](https://twitter.com/TizenHelper/status/1019945989388546048# "blinkt-node")

# Development
Only modify files in the ./src folder. The ./dist folder is generated from the ./src folder via babel to produce an ES5 version.

You can modify the ./src/Blinkt.js file but please ensure you correctly document the functions you make using JSDoc. Run "npm run eslint" to check your code for errors before committing and fix all issues. You can also run "npm run eslint-fix" to auto-fix most common issues before fixing manual ones.

Once you are ready to commit an update, run "npm run build" which will generate a new ES5 build. Make sure you update the package.json version as well.

Thanks! 

# Copyright and License
All works are copyright Irrelon Software Limited. You may use this project under any license that you wish e.g. (MIT, GPL etc). You may use this software, source code, project, part of or in entirety for any reason under any license you wish, or no license at all. The software is given away freely and may be used for non-commercial and commercial, educational, governmental or any other purpose free of charge and free of license. Just go use it!
