#
#
#

.PHONY: clean build

# 出力先
BUILD_DIR=build

# 生成するライブラリ名とdylibのinstall_name
DYLIB_NAME=libhelloworld.dylib
DYLIB_INSTALL_NAME=@rpath/${DYLIB_NAME}

# ビルドターゲットを指定 (iphoneos, iphonesimulator, watchos, appletvos, driverkit, macosx)
TARGET=macosx

# アーキテクチャを指定 (arm64, x86_64)
ARCH=x86_64

# 最小バージョン
MAC_MINIMUM_VERSION=10.12

# SDKとclangのパスを取得
SDK_ROOT_PATH=`xcrun --sdk ${TARGET} --show-sdk-path`
CLANG_PATH=`xcrun --sdk ${TARGET} --find clang`

# コンパイラ共通引数
COMMON_OPTIONS=-Wall -Werror
COMMON_C_FLAGS=${COMMON_OPTIONS} -arch ${ARCH} -isysroot ${SDK_ROOT_PATH} -mmacosx-version-min=${MAC_MINIMUM_VERSION}

build:
	@echo "Building library..."
	@echo "\tTarget: ${TARGET}"
	@echo "\tArchitecture: ${ARCH}"
	@echo "\tLibrary: ${DYLIB_NAME}"
	@$(MAKE) main

main: main.c helloworld.h ${DYLIB_NAME}
	@${CLANG_PATH} ${COMMON_C_FLAGS} main.c -rpath ./${BUILD_DIR} -o ${BUILD_DIR}/main -L ${BUILD_DIR} -lhelloworld

${DYLIB_NAME}: helloworld.c
	@mkdir -p ${BUILD_DIR}
	@${CLANG_PATH} ${COMMON_C_FLAGS} -c -fpic helloworld.c -o ${BUILD_DIR}/helloworld.o
	@${CLANG_PATH} ${COMMON_C_FLAGS} -shared -o ${BUILD_DIR}/${DYLIB_NAME} -install_name ${DYLIB_INSTALL_NAME} ${BUILD_DIR}/helloworld.o
	@rm ${BUILD_DIR}/helloworld.o

clean:
	@rm -rf ${BUILD_DIR}
	@mkdir -p ${BUILD_DIR} 
