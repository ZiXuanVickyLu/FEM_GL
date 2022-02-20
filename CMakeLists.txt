cmake_minimum_required(VERSION 3.10)
project(FEM)
set(CMAKE_CXX_STANDARD 14)
set(THIRD_PARTY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external/)

#GLFW additions
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
add_subdirectory(${THIRD_PARTY_DIR}/glfw-3.3.6/ REQUIRED)

# will add glfw deps to application
set(GLAD "${GLFW_SOURCE_DIR}/deps/glad/gl.h"
        "${GLFW_SOURCE_DIR}/deps/glad_gl.c")
set(GETOPT "${GLFW_SOURCE_DIR}/deps/getopt.h"
        "${GLFW_SOURCE_DIR}/deps/getopt.c")
set(TINYCTHREAD "${GLFW_SOURCE_DIR}/deps/tinycthread.h"
        "${GLFW_SOURCE_DIR}/deps/tinycthread.c")

#add source to application
file(GLOB SOURCE "./src/*.cpp")

#add project built dependence
add_executable(fem ${SOURCE} ${GLAD} ${GETOPT} ${TINYCTHREAD})

#link glfw library(libglfw3.a) built from source
target_link_libraries(fem glfw ${GLFW_LIBRARIES})

target_include_directories(fem PUBLIC
        "${THIRD_PARTY_DIR}/eigen"
        "${THIRD_PARTY_DIR}/glfw-3.3.6/deps"
        )

