all: build docs

clean:
	rm -rf build docs

build: build/cmake
	$(MAKE) -C build

build/cmake: build/dir
	cd build &&\
	cmake\
		-DCMAKE_BUILD_TYPE=Debug\
		-DMAKE_DOCS=ON\
		..

build/dir:
	mkdir -p build

test: build
	$(MAKE) -C build test

docs: build/cmake
	cmake --build build --target doxygen-docs

apply_format:
	find -f ./include ./src ./examples ./tests -name "*.hpp" -o -name "*.cpp" | xargs clang-format -i