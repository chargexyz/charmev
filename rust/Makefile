.DEFAULT_GOAL := help
PROJECTNAME=peaq_codec_api
LLVM_PATH=/usr/local/homebrew/opt/llvm
RUST_INPUT=src/api.rs
DART_OUTPUT=../lib/common/services/fr_bridge/bridge_generated.dart

.PHONY: help
help: makefile
	@echo
	@echo " Available actions in "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo

## install: dependencies installation.
install:
	rustup target add aarch64-linux-android armv7-linux-androideabi i686-linux-android x86_64-linux-android
	@if [ $$(uname) == "Darwin" ] ; then cargo install cargo-lipo ; fi
	cargo install cbindgen

## android: for android binaries compilation.
android: ndk-home clean bridge
	cargo +nightly ndk --platform 28 -t arm64-v8a -o ../android/app/src/main/jniLibs build -Zbuild-std --release &
	cargo +nightly ndk --platform 28 -t armeabi-v7a -o ../android/app/src/main/jniLibs build -Zbuild-std --release &
	cargo +nightly ndk --platform 28 -t x86_64 -o ../android/app/src/main/jniLibs build -Zbuild-std --release 

## bridge:
bridge:
	flutter_rust_bridge_codegen --rust-input ${RUST_INPUT} --dart-output ${DART_OUTPUT} --llvm-path ${LLVM_PATH}

## ndk-home: check for NDK env settings
ndk-home:
	@if [ ! -d "${ANDROID_NDK_HOME}" ] ; then \
		echo "Error: Please, set the ANDROID_NDK_HOME env variable to point to your NDK folder" ; \
		exit 1 ; \
	fi

## clean: clear compiled binaries
clean:
	cargo clean

## test:
test:
	cargo test