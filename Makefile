#!/bin/make -f
# -*- makefile -*-
main_src ?= dist/example/fade.js
runtime ?= iotjs
project?=node-blinkt
iotjs_modules_dir ?= iotjs-modules

default: help start
	@echo "# $@: $^"

help:
	@echo "Usage:"
	@echo "# make start"

run/node: ${main_src} node_modules
	npm test

run/iotjs: ${main_src} ${iotjs_modules_dir}
	-which iotjs
	-iotjs -h 
	IOTJS_EXTRA_MODULE_PATH=${iotjs_modules_dir}/iotjs-wiringpi/lib/iotjs iotjs $<

run: run/node run/iotjs

iotjs_wiringpi_dir ?= ${iotjs_modules_dir}/iotjs-wiringpi
iotjs_wiringpi_url ?= https://github.com/SamsungInternet/wiringpi-iotjs
iotjs_wiringpi_revision ?= master

${iotjs_modules_dir}/wiringpi-node:
	mkdir -p $@
	git clone --depth 1 --recursive -b ${iotjs_wiringpi_revision} ${iotjs_wiringpi_url} $@

${iotjs_modules_dir}: ${iotjs_modules_dir}/wiringpi-node
	du -ks $@

node_modules: package.json
	npm install

${main_src}: package.json node_modules
	npm run build

start: run/${runtime}
