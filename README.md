Welcome to my KISS repo where everything is hacked together, and I probably won't
be using any of it in a few months.

On your left, you'll have the `custom` directory, which contains packages that
probably aren't in the KISS repos (including community) and are safe to put in
your `KISS_PATH` without worrying about conflicts.

On your right however, you'll have the `modified` directory, which contains 
packages that will conflict with stuff in KISS repos (including community) and 
should be added with care, if at all.

And lastly, there is the `lto` directory, which contains configuration for 
aggressive compiler optimizations. These aren't complete at all, and dragons willeat your passwords if you decide to use them. See the 
[`kiss-lto`](lto/kiss-lto/README.md) package for more info.

## Notice

Everything in this repository is provided for the greater good of humanity. No
support should be expected. However, it may still be given regardless.

All packages under `custom` and `lto` are licensed to the Public Domain (or CC0
if public domain is problematic for you).

All packages under `modified` are licensed under the same license as the
originals, which are most likely under the MIT License unless specified 
otherwise.

