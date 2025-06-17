# KMake Files
The Kernel Maker local targets files

These are to be used with Kieran's [KMake](https://github.com/kbingham/kmake_).

Make sure you understand what Kieran's tool does before moving forward.

## How

First, make sure you have Kieran's kmake installed.

Then, just copy (or symlink) the prefered kmake file to your kernel tree.

```
cd kmake-files;
ln -s <preferred kmake> <kernel tree>/kmake
```

Once you have that, you can run any target the kmake file provides.
For example:

```
kmake defconfig
kmake mkbootimg
```
