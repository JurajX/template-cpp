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

format:
	find -E . \
		-type d -regex '\./(build|docs|\.git)' -prune -o \
		-type f -regex ".*\.(c|cc|cxx|cpp|c\+\+|h|hh|hxx|hpp|h\+\+)" -print | \
	xargs clang-format -i -style=file
