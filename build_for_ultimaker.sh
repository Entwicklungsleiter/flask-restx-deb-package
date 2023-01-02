#!/bin/sh

# requirements:
# sudo apt install dh-python python3-stdeb python3-aniso8601

SRC_PATH="$(pwd)"
MODULE_PATH="$(pwd)/flask-restx"

init() {
	git submodule update --init --recursive
}

build() {
	cd "${MODULE_PATH}" &&
	python3 setup.py --command-packages=stdeb.command bdist_deb &&
	cp deb_dist/python3-flask-restx_*.deb "${SRC_PATH}/"
	cd "${SRC_PATH}"
}

init
build
