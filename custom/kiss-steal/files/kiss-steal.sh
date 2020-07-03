#!/bin/sh -e
# Steal packages from other repositories

VERSION="1"
CACHE_PATH="$HOME/.cache/kiss-steal"


if [ "$#" -ne 2 ]; then
    echo "kiss-steal $VERSION"
    echo "$0 <repo_url> [<subfolder>/]<package> :: Steal <package> from <repo> into ./<package>"
    exit
fi

REPO="$1"
PKG="$2"

sanitize_folder_name() {
    echo "$1" | cut -d"/" -f4- | sed 's@/@_@'
}

fetch_repo() {
    REPO="$1"
    FOLDER="$2"

    if [ -d "$FOLDER" ]; then
        owd="$PWD"
        cd "$FOLDER"
        git pull
        cd "$owd"
    else
        git clone "$REPO" "$FOLDER"
    fi
}

mkdir -p "$CACHE_PATH"

repo_path="$CACHE_PATH/$(sanitize_folder_name "$REPO")"
fetch_repo "$REPO" "$repo_path"

out="./$(basename "$PKG")"
cp -r "$repo_path/$PKG" "$out"

echo "Package stolen into $out, you thief!"
