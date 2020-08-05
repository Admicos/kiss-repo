#!/bin/sh -eu

# change for you before running
#_mydir="/home/admicos/kiss/var/db/kiss/admicos/kuse/kiss-use/_test"
_mydir="/var/db/kiss/admicos/kuse/kiss-use/_test"
_kuse="$_mydir/../files/kuse"

should_err() {
    if $_kuse $@ >/dev/null; then
        echo "FAIL should_err: $@"
        exit 1
    else
        echo "pass should_err: $@"
    fi
}

should_ok() {
    if $_kuse $@ >/dev/null; then
        echo "pass should_ok: $@"
    else
        echo "FAIL should_ok: $@"
        exit 1
    fi
}

export USEPATH="$_mydir/usepath_global_and_package"
echo ":: Global and Package"

should_ok package has global_always_enabled
should_ok package has package_specific_enabled
should_err package has global_package_disabled

should_ok unknown_package has global_always_enabled
should_ok unknown_package has global_package_disabled
should_err unknown_package has package_specific_enabled

export USEPATH="$_mydir/usepath_global_no_package"
echo ":: Global No Package"

should_ok package has global_always_enabled
should_err package has package_specific_enabled

export USEPATH="$_mydir/usepath_package_no_global"
echo ":: Package No Global"

should_ok package has package_specific_enabled
should_err package has global_always_enabled
should_err package has global_package_disabled

export USEPATH="$_mydir/usepath_global_and_package"
export KUSE="env_always_enabled env_package_disabled -package_env_disabled -global_env_disabled"
echo ":: Global and Package with \$KUSE"

should_ok package has env_always_enabled
should_err package has package_env_disabled
should_err unknown_package has global_env_disabled

echo ":: Global and Package with \$KUSE and \$KUSE_package"
export KUSE_package="-env_package_disabled env_package_always_enabled"

should_ok package has env_package_always_enabled
should_err package has env_package_disabled

should_ok unknown_package has env_package_disabled
should_err unknown_package has env_package_always_enabled
