# kiss-steal

`kiss-steal` is a little shell script that allows you to steal packages from any
repo that can be cloned via git.

## Usage

1. Search for your target. I'll use [kiss-find](../kiss-find) to do so:

```sh
$ kiss f unzip

{
  "unzip": [
    {
      "path": "KISS-me/unzip",
      "repo": "https://github.com/dilyn-corner/KISS-me",
      "version": "6.0 1"
    }
  ]
}
```

2. Steal it

```sh
$ kiss steal https://github.com/dilyn-corner/KISS-me KISS-me/unzip

Cloning into '/home/admicos/.cache/kiss-steal/dilyn-corner_KISS-me'...
....bla bla bla bla git stuff happens here.....

Package stolen into ./unzip, you thief!
```

3. Profit

```sh
$ cd unzip
$ kiss b
$ kiss i
```
