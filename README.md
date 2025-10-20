# Yunohost Application for Trivabble web application

This is the project to integrate the web application Trivabble into Yunohost.

Authoritative official source for this repository is https://git.jakse.fr/artlog/trivabble_ynh

/!\ Please use latest official source content, other repositories are not maintained in sync.

# WORK IN PROGRESS 

Current status : can install but UPGRADE IS NOT SUPPORTED.

to upgrade you have to remove previous application and add new one

trivabble app  for yunohost development wiki page 

[![Integration level](https://dash.yunohost.org/integration/trivabble.svg)](https://dash.yunohost.org/appci/app/trivabble)  
[![Install trivabble with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=trivabble)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install trivabble quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
Quick description of this app.

**Shipped version:** not yet known

## Screenshots

![](Link to an screenshot for this app)

## Demo

* [Official demo](Link to a demo site for this app)

## Configuration

How to configure this app: by an admin panel, a plain file with SSH, or any other way.

## Documentation

 * Official documentation: Link to the official documentation of this app
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-users support

Are LDAP and HTTP auth supported?
Can the app be used by multiple users?

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/trivabble%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/trivabble/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/trivabble%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/trivabble/)

## Limitations

* Any known limitations.

## Additional information

* Other information you would add about this application

**More information on the documentation page:**  
https://yunohost.org/packaging_apps

## Links

 * Report a bug: https://github.com/YunoHost-Apps/trivabble_ynh/issues
 * App website: Link to the official website of this app
 * Upstream app repository: Link to the official repository of the upstream app
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/trivabble_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/trivabble_ynh/tree/testing --debug
or
sudo yunohost app upgrade trivabble -u https://github.com/YunoHost-Apps/trivabble_ynh/tree/testing --debug
```
