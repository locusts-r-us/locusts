project('locusts', 'c', version: '0.0.0', default_options: ['warning_level=3'], license: '0BSD')

source = 'src/locusts.c'
header = 'include/locusts.h'
includes = include_directories('include')

lib = library('ocusts', source, include_directories: includes, install: true, version: meson.project_version(), soversion: '1')

project_dep =declare_dependency(include_directories: includes)

install_headers(header)

pkg = import('pkgconfig')
pkg.generate(lib, description: 'A C library that introduces locusts into your codebase')

if not meson.is_subproject()
  test(
    'Locust Testing Utility',
    executable('test_locusts', 'tests/test_locusts.c', link_with: lib, dependencies: project_dep),
  )
endif
