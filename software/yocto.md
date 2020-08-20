---
layout: default
title: Building System Images
parent: Software
nav_order: 1
---

# Building System Image from kimχ yocto demo

The kimχ yocto demo repository aims to provide a quick way to grab yocto layers and build a demo image for the kimχ micro.

You can use this as a starting point for customization.

## Clone and update submodules

```
git clone https://github.com/groupgets/kimchi-yocto-demo.git
cd kimchi-yocto-demo
git submodule update --init
```

## Create a build directory

```
MACHINE=kimchi DISTRO=fslc-wayland . ./setup-environment build-kimchi
```

## Build an image

```
bitbake -k core-image-base
```

## Programming the Board

See the [kimχ micro documentation](/kimchi-micro/software/programming.html) for a walkthrough on how to do this

## Reusing an existing build directory

If you've already run a build and want to enter the bitbake environment again, you can simply run:

```
. ./setup-environment build-kimchi
```
