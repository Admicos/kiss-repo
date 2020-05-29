# kiss-find

`kiss-find` is a little shell script that allows you to search for packages in 
every known KISS repository. (Including ones you haven't added to your `KISS_PATH`)

## Usage

First, you need to do `kiss-find -u` to download an updated database from my 
server. You might want to do this every now and then, as it will not update 
automatically.

After that, you can just run `kiss-find query`, and get all packages containing
"query" in their name.

## Database

The tools used to create kiss-find's database are available at the following
repository: https://github.com/Admicos/kiss-find-db

If you want to add your own repository to the database, go there for more 
information.
