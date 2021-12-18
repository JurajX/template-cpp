all: build

build: build/cmake
	$(MAKE) -C build

build/cmake: build/dir
	cd build &&\
	cmake\
		-DCMAKE_BUILD_TYPE=Debug\
		..

build/dir:
	mkdir -p build

clean:
	rm -rf build

test: all
	$(MAKE) -C build test
