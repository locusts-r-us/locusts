cmake_minimum_required(VERSION 3.14)
project(libocusts VERSION 1.0.0 DESCRIPTION "A C library that introduces locusts into your codebase" LANGUAGES C)

include(GNUInstallDirs)

add_library(objlib OBJECT src/locusts.c)
target_include_directories(objlib PUBLIC include)
set_target_properties(objlib PROPERTIES LINKER_LANGUAGE C)

add_library(ocusts SHARED $<TARGET_OBJECTS:objlib> include/locusts.h)
target_link_libraries(ocusts PUBLIC objlib)
set_target_properties(ocusts PROPERTIES LINKER_LANGUAGE C)
set_target_properties(ocusts PROPERTIES VERSION ${PROJECT_VERSION} SOVERSION ${PROJECT_VERSION_MAJOR})
set_target_properties(ocusts PROPERTIES PUBLIC_HEADER include/locusts.h)

add_library(ocusts_static STATIC $<TARGET_OBJECTS:objlib> include/locusts.h)
target_link_libraries(ocusts_static PUBLIC objlib)
set_target_properties(ocusts_static PROPERTIES LINKER_LANGUAGE C)
set_target_properties(ocusts_static PROPERTIES VERSION ${PROJECT_VERSION} SOVERSION ${PROJECT_VERSION_MAJOR})
set_target_properties(ocusts_static PROPERTIES OUTPUT_NAME ocusts)

# Make autoconf and cmake agree with each other
set(prefix ${CMAKE_INSTALL_PREFIX})
set(libdir \${prefix}/${CMAKE_INSTALL_LIBDIR})
set(includedir \${prefix}/${CMAKE_INSTALL_INCLUDEDIR})
set(VERSION ${PROJECT_VERSION})
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/ocusts.pc.in ${CMAKE_CURRENT_BINARY_DIR}/ocusts.pc @ONLY)
install(
	FILES ${CMAKE_CURRENT_BINARY_DIR}/ocusts.pc DESTINATION ${CMAKE_INSTALL_LIBDIR}/pkgconfig
)
install(
	TARGETS ocusts ocusts_static
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
	ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
	PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

add_executable(test_locusts tests/test_locusts.c)
target_link_libraries(test_locusts PRIVATE ocusts)

enable_testing()

add_test(NAME test_locusts COMMAND test_locusts)