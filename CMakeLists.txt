cmake_minimum_required(VERSION 3.10)
project(FEM)
set(CMAKE_CXX_STANDARD 14)
set(THIRD_PARTY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external/)

#GLFW additions
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
add_subdirectory(${THIRD_PARTY_DIR}/glfw-3.3.6/ REQUIRED)

#add glad
set(GLAD "${THIRD_PARTY_DIR}/glad/include/glad/glad.h"
        "${THIRD_PARTY_DIR}/glad/include/KHR/khrplatform.h"
        "${THIRD_PARTY_DIR}/glad/src/glad.c")

# will add glfw deps to application
set(GETOPT "${GLFW_SOURCE_DIR}/deps/getopt.h"
        "${GLFW_SOURCE_DIR}/deps/getopt.c")
set(TINYCTHREAD "${GLFW_SOURCE_DIR}/deps/tinycthread.h"
        "${GLFW_SOURCE_DIR}/deps/tinycthread.c")

#add source to application

aux_source_directory(./src SOURCE)
aux_source_directory(./src/render RENDER)
aux_source_directory(./src/loader LOADER)
aux_source_directory(./src/cubegen CUBE)
set (SRC "${SOURCE}" "${RENDER}" "${LOADER}" "${CUBE}")


#add project built dependence
add_executable(fem ${SRC} ${GLAD} ${GETOPT} ${TINYCTHREAD})

#link glfw library(libglfw3.a) built from source
target_link_libraries(fem glfw ${GLFW_LIBRARIES})

target_include_directories(fem PUBLIC
        "${THIRD_PARTY_DIR}/eigen"
        "${THIRD_PARTY_DIR}/glfw-3.3.6/deps"
        "${THIRD_PARTY_DIR}/glm-0.9.9.8"
        "${THIRD_PARTY_DIR}/glad/include"
        )
