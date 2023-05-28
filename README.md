# 11-23-2021 working send / receive 
# 11-23-2021 (fixed server side , HAD no BIT to test binance.us delay up to 5 days?)

# need to adjust main QR code workaround 
# todo -> remove ?time= date by unix epoch from address URI label
```
date +%s
```
![s1](https://github.com/c4pt000/electrum-bitnet/releases/download/android/todo-remove-time-from-URI.gif)
# scan from QR icon (not QR window)
![s1](https://github.com/c4pt000/electrum-bitnet/releases/download/android/scan-from-here.gif)

# for android -> see releases

# https://github.com/bitnet-io/electrum-bitnet/releases/tag/electrum-android




# macOS (requires python3 , xcode command line tools)
```
cd electrum-bitnet
python3 -m pip install --upgrade pip
python3 -m pip install .
python3 -m pip install PyQt5
cd contrib
sh build-macos-automake.sh
sh make_libsecp256k1.sh
cd ..
./run_electrum
```

# Electrum - Lightweight Bitcoin client

```
Licence: MIT Licence
Author: Thomas Voegtlin
Language: Python (>= 3.8)
Homepage: https://electrum.org/
```

[![Build Status](https://api.cirrus-ci.com/github/spesmilo/electrum.svg?branch=master)](https://cirrus-ci.com/github/spesmilo/electrum)
[![Test coverage statistics](https://coveralls.io/repos/github/spesmilo/electrum/badge.svg?branch=master)](https://coveralls.io/github/spesmilo/electrum?branch=master)
[![Help translate Electrum online](https://d322cqt584bo4o.cloudfront.net/electrum/localized.svg)](https://crowdin.com/project/electrum)


## Getting started

_(If you've come here looking to simply run Electrum,
[you may download it here](https://github.com/bitnet-io/electrum-bitnet/releases).)_

Electrum itself is pure Python, and so are most of the required dependencies,
but not everything. The following sections describe how to run from source, but here
is a TL;DR:

```
$ sudo apt-get install libsecp256k1-dev
$ python3 -m pip install --user ".[gui,crypto]"
```

### Not pure-python dependencies

If you want to use the Qt interface, install the Qt dependencies:
```
$ sudo apt-get install python3-pyqt5
```

For elliptic curve operations,
[libsecp256k1](https://github.com/bitcoin-core/secp256k1)
is a required dependency:
```
$ sudo apt-get install libsecp256k1-dev
```

Alternatively, when running from a cloned repository, a script is provided to build
libsecp256k1 yourself:
```
$ sudo apt-get install automake libtool
$ ./contrib/make_libsecp256k1.sh
```

Due to the need for fast symmetric ciphers,
[cryptography](https://github.com/pyca/cryptography) is required.
Install from your package manager (or from pip):
```
$ sudo apt-get install python3-cryptography
```

If you would like hardware wallet support,
[see this](https://github.com/spesmilo/electrum-docs/blob/master/hardware-linux.rst).


### Running from tar.gz

If you downloaded the official package (tar.gz), you can run
Electrum from its root directory without installing it on your
system; all the pure python dependencies are included in the 'packages'
directory. To run Electrum from its root directory, just do:
```
$ ./run_electrum
```

You can also install Electrum on your system, by running this command:
```
$ sudo apt-get install python3-setuptools python3-pip
$ python3 -m pip install --user .
```

This will download and install the Python dependencies used by
Electrum instead of using the 'packages' directory.
It will also place an executable named `electrum` in `~/.local/bin`,
so make sure that is on your `PATH` variable.


### Development version (git clone)

_(For OS-specific instructions, see [here for Windows](contrib/build-wine/README_windows.md),
and [for macOS](contrib/osx/README_macos.md))_

Check out the code from GitHub:
```
$ git clone https://github.com/bitnet-io/electrum-bitnet
$ cd electrum-bitnet
$ git submodule update --init
```

Run install (this should install dependencies):
```
$ python3 -m pip install --user -e .
```

Create translations (optional):
```
$ sudo apt-get install python3-requests gettext qttools5-dev-tools
$ ./contrib/pull_locale
```

Finally, to start Electrum:
```
$ ./run_electrum
```

### Run tests

Run unit tests with `pytest`:
```
$ pytest electrum/tests -v
```

To run a single file, specify it directly like this:
```
$ pytest electrum/tests/test_bitcoin.py -v
```

## Creating Binaries

- [Linux (tarball)](contrib/build-linux/sdist/README.md)
- [Linux (AppImage)](contrib/build-linux/appimage/README.md)
- [macOS](contrib/osx/README.md)
- [Windows](contrib/build-wine/README.md)
- [Android](contrib/android/Readme.md)


## Contributing

see Bitnet -> Discord server

