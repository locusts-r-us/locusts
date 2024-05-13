project('locusts', 'c', version: '1.0.0', default_options: ['warning_level=3'])

source = 'include/locusts.h'

lib = library('ocusts', source, install: true, version: meson.project_version(), soversion: '1')

project_dep =declare_dependency(include_directories: include_directories('include'))

install_headers(source)

pkg = import('pkgconfig')
pkg.generate(lib, description: 'A completely normal C library')

if not meson.is_subproject()
  test(
    'Locust Testing Utility',
    executable('test_locusts', 'tests/test_locusts.c', link_with: lib, dependencies: project_dep),
  )
endif