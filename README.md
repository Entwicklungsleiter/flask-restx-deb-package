# Flask-RestX Debian Package builder

## Why?

This repository's purpose is to create a debian package of the [flask-restx
python package](https://github.com/python-restx/flask-restx).

This repository is a fork of the [package builder repo for flask-restplus](https://github.com/Ultimaker/um-flask-restplus).

## How?

### Checkout this repo.
```shell
git clone git@github.com:Entwicklungsleiter/flask-restx-deb-package.git # maybe You'll like to replace with https-URL
cd flask-restx-deb-package/
```

### Setup / Preparing:
```shell
# install debian / Ubuntu dependencies
sudo apt install dh-python python3-stdeb python3-aniso8601 python3-pip

# initiate flask-restx as git submodule
git submodule init
git submodule update

# go into flask-restx folder
cd flask-restx

# create a virtual environment for this software
# (to avoid conflicts of Python dependencies with Your installed Python packages)
mkdir .venv
pipenv shell
# install python dependencies for flask-restx development (required for next step)
pip install -e .[dev]
# download and install all assets (i.e. Swagger files)
inv assets

# leave virtual pip environment
exit
```

### Run deb build process in Your shell:

```shell
cd ..
./build_for_ultimaker.sh
```
If the last command fails, maybe depenedencies are missing. You'll find a list of required dependencies as comment in file build_for_ultimaker.sh.

### Install DEB package

```shell
sudo apt install ./python3-flask-restx_*.deb
sudo apt install -f # check if missing dependencies prevented installation success
```
