all: format
	make build &&\
	make docs

test: build
	$(MAKE) -C build test

build: build/cmake
	$(MAKE) -C build

docs: build/docs
	$(MAKE) -C build doxygen-docs

build/cmake: build/dir
	cd build &&\
	cmake\
		-DCMAKE_BUILD_TYPE=Debug\
		-DMAKE_DOCS=OFF\
		..

build/docs: build/dir
	cd build &&\
	cmake\
		-DCMAKE_BUILD_TYPE=Debug\
		-DMAKE_DOCS=ON\
		..

build/dir:
	mkdir -p build

cclean:
	rm -rf build docs

clean:
	cd build &&\
	ls -A | grep -vo "_deps" | xargs rm -rf

format:
	find -E . \
		-type d -regex '\./(build|docs|\.git)' -prune -o \
		-type f -regex ".*\.(c|cc|cxx|cpp|c\+\+|h|hh|hxx|hpp|h\+\+)" -print | \
	xargs clang-format -i -style=file


REPO := https://raw.githubusercontent.com/JurajX/BaseRepo/master

update: update/Makefile update/clang_format update/gitignore

update/Makefile:
	wget -q $(REPO)/Makefile -O Makefile

update/clang_format:
	wget -q $(REPO)/.clang-format -O .clang-format

update/gitignore:
	wget -q $(REPO)/.gitignore -O .gitignore
