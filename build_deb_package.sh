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
	mv ${MODULE_PATH}/deb_dist/python3-flask-restx_*.deb "${SRC_PATH}/"
	rm -rf ${MODULE_PATH}/deb_dist ${MODULE_PATH}/flask-restx-*.tar.gz
	cd "${SRC_PATH}"
}

init
build
