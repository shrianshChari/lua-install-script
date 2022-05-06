# Grabbing lua source and compiling it
curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz
tar zxf lua-5.4.4.tar.gz
cd lua-5.4.4
make all test

# lua and luac are now in ./lua-5.4.4/src
# Currently, you are also in ./lua-5.4.4

# Moving lua and luac to local binaries
mv $PWD/src/lua ~/.local/bin/
mv $PWD/src/luac ~/.local/bin/

# Moving out of lua's repo
cd ..

# Removing lua's repo
rm -rf ./lua-5.4.4
