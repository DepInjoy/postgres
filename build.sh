SOURCE_PATH="${HOME}/project/code/postgres"
BUILD_PATH="build"
INSTALL_PATH="${HOME}/project/local/"

if [ ! -d "$BUILD_PATH" ]; then
	mkdir $BUILD_PATH
fi

if [ ! -d "$INSTALL_PATH" ]; then
    mkdir $INSTALL_PATH
fi

cd $BUILD_PATH
$SOURCE_PATH/configure --prefix=$INSTALL_PATH --exec-prefix=$INSTALL_PATH

make && make install


