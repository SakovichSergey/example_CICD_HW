cmake_minimum_required(VERSION 3.5)

project(example_HW LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(example_HW main.cpp)

include(GNUInstallDirs)
install(TARGETS example_HW
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
