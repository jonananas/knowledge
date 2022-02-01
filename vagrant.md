# Vagrant howto

```bash
# possibly brew install virtualbox first
brew install vagrant
```

Search for images at [vagrantup.com](https://app.vagrantup.com/boxes/search)

## Windows 11 on osx

```bash
vagrant init gusztavvargadr/windows-11-enterprise
vagrant up
vagrant ssh
# Or open GUI on VirtualBox
```

## Singularity on Linux

sylabs/singularity-3.7-ubuntu-bionic64

## Shutting image down

```bash
vagrant destroy
```
