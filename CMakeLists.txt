cmake_minimum_required(VERSION 3.14)
project(libocusts VERSION 1.0.0 DESCRIPTION "A completely normal C library" LANGUAGES C)

include(GNUInstallDirs)

add_library(objlib OBJECT include/locusts.h)
target_include_directories(objlib PUBLIC include)
set_target_properties(objlib PROPERTIES LINKER_LANGUAGE C)

add_library(ocusts SHARED $<TARGET_OBJECTS:objlib> include/locusts.h)
target_link_libraries(ocusts PUBLIC objlib)
set_target_properties(ocusts PROPERTIES LINKER_LANGUAGE C)

add_library(ocusts_static STATIC $<TARGET_OBJECTS:objlib> include/locusts.h)
target_link_libraries(ocusts_static PUBLIC objlib)
set_target_properties(ocusts_static PROPERTIES LINKER_LANGUAGE C)

set(prefix ${CMAKE_INSTALL_PREFIX})
set(libdir $\${prefix}/${CMAKE_INSTALL_LIBDIR})
set(includedir \${prefix}/${CMAKE_INSTALL_INCLUDEDIR})
set(VERSION ${PROJECT_VERSION})
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/ocusts.pc.in ${CMAKE_CURRENT_BINARY_DIR}/ocusts.pc @ONLY)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/ocusts.pc DESTINATION ${CMAKE_INSTALL_LIBDIR}/pkgconfig)