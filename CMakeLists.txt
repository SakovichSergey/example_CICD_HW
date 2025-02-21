cmake_minimum_required(VERSION 3.11)

#project(example_HWe LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(PATCH_VERSION "1" CACHE INTERNAL "Patch version")
set(PROJECT_VESRION 0.0.${PATCH_VERSION})

project(example_HWe VERSION ${PROJECT_VESRION})

find_package(Boost COMPONENTS unit_test_framework REQUIRED)

configure_file(vpatch.h.in vpatch.h)

add_executable(example_HWe  main.cpp)
add_library(example_HW  version.cpp version.h)
add_executable(test_version test_version.cpp)


set_target_properties(example_HWe example_HW test_version PROPERTIES
    CXX_STANDARD 14
    CXX_STANDARD_REQUIRED ON
)
target_include_directories(example_HW
    PRIVATE "${CMAKE_BINARY_DIR}"
)
set_target_properties(test_version PROPERTIES
    COMPILE_DEFINITIONS BOOST_TEST_DYN_LINK
    INCLUDE_DIRECTORIES ${Boost_INCLUDE_DIR}
)

target_link_libraries(example_HWe PRIVATE
    example_HW
)
target_link_libraries(test_version
    ${Boost_LIBRARIES}
    example_HW
)

if (MSVC)
    target_compile_options(example_HWe PRIVATE
        /W4
    )
   target_compile_options(example_HW PRIVATE
        /W4
    )
    target_compile_options(test_version PRIVATE
        /W4
    )
else ()
    target_compile_options(example_HWe PRIVATE
        -Wall -Wextra -pedantic -Werror
    )
    target_compile_options(example_HW PRIVATE
        -Wall -Wextra -pedantic -Werror
    )
    target_compile_options(test_version PRIVATE
        -Wall -Wextra -pedantic -Werror
    )
endif()


#install(TARGETS example_HWe RUNTIME DESTINATION bin)

include(GNUInstallDirs)

install(TARGETS example_HWe
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)


set(CPACK_GENERATOR DEB)

set(CPACK_PACKAGE_VERSION_MAJOR "${PROJECT_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${PROJECT_VERSION_MINOR}")
set(CPACK_PACKAGE_VERSION_PATCH "${PROJECT_VERSION_PATCH}")

set(CPACK_PACKAGE_CONTACT example@example.com)

include(CPack)

enable_testing()

add_test(test_version test_version)
