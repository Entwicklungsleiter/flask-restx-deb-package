# Flask-RestX Debian Package builder

## Why?

This repository's purpose is to create a debian package of the [flask-restx
python package](https://github.com/python-restx/flask-restx).

This repository is a fork of the [package builder repo for flask-restplus](https://github.com/Ultimaker/um-flask-restplus).

## How?

### Checkout this repo.
```shell
git clone git@github.com:Entwicklungsleiter/flask-restx-deb-package.git # maybe You'll like to replace with https-URL
```

### Run deb build process in Your shell:

```shell
cd flask-restx-deb-package
git submodule init
git submodule update
./build_for_ultimaker.sh 
```
If the last command fails, maybe depenedencies are missing. You'll find a list of required dependencies as comment in file build_for_ultimaker.sh.

### Install DEB package

```shell
sudo apt install ./python3-flask-restx_*.deb
sudo apt install -f # check if missing dependencies prevented installation success
```
