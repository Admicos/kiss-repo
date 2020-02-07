# kiss-hooked

The `KISS_HOOK` environment variable only allows for a single hook. This is a
simple hook that lets you use multiple hooks at the same time, just by placing
them in a folder.

## Usage

Set `KISS_HOOK` to this script to install. You can simply run it to get a
command that does it for you.

After installation, move any hooks you want into `/etc/kiss-hooked/$TYPE/` with
the file extension `.hook`, and they will be automatically ran whenever the
event represented by `$TYPE` happens.

See the `KISS_HOOK` documentation for more info

**protip:** The default hook folder can be replaced with `$KISS_HOOKED_ROOT`,
though that might not be a great idea, especially if you're planning to use
`kiss-lto`.
