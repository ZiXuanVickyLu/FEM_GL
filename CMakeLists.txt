cmake_minimum_required(VERSION 3.16)
project(ENGIN)
set(CMAKE_CXX_STANDARD 14)
set(THIRD_PARTY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/external)

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

#add ply exporter/loader
set(PLY "${THIRD_PARTY_DIR}/plycpp/plycpp.cpp")

#add imgui lib
set(IMGUI_SRC "")
set(IMGUI_DIR 	"${THIRD_PARTY_DIR}/imgui"
				"${THIRD_PARTY_DIR}/imgui/misc/cpp"
				"${THIRD_PARTY_DIR}/imgui/freestype"
				"${THIRD_PARTY_DIR}/imgui/single_file"
				"${THIRD_PARTY_DIR}/imgui/fonts"
		)

FOREACH(ele ${IMGUI_DIR})
	aux_source_directory(${ele} tmp)
	list(APPEND IMGUI_SRC ${tmp})
ENDFOREACH()

aux_source_directory(IMGUI_DIR IMGUI_SRC)
list(APPEND IMGUI_SRC ${THIRD_PARTY_DIR}/imgui/backends/imgui_impl_glfw.cpp ${THIRD_PARTY_DIR}/imgui//backends/imgui_impl_opengl3.cpp)
list(APPEND IMGUI_DIR ${THIRD_PARTY_DIR}/imgui/backends )
add_library(imgui_lib STATIC ${IMGUI_SRC})
target_include_directories(imgui_lib PUBLIC "${THIRD_PARTY_DIR}/imgui"
										"${THIRD_PARTY_DIR}/glfw-3.3.6/include")

#set public include directories
set(INCLUDE_PUBLIC  "${THIRD_PARTY_DIR}/eigen"
		"${THIRD_PARTY_DIR}/glfw-3.3.6/deps"
		"${THIRD_PARTY_DIR}/glm-0.9.9.8"
		"${THIRD_PARTY_DIR}/glad/include"
		"${THIRD_PARTY_DIR}/plycpp"
		"${IMGUI_DIR}")

#add source to application

aux_source_directory(./src/render RENDER)
aux_source_directory(./src/loader LOADER)
aux_source_directory(./src/cubegen CUBE)
aux_source_directory(./src/FEM FEM)
set (APP_SRC "${RENDER}" "${LOADER}" "${CUBE}" ${FEM} )


#add project built dependence
add_executable(fem "./src/mainFEM.cpp" ${APP_SRC} ${GLAD} ${GETOPT} ${TINYCTHREAD} ${PLY})

#link glfw library(libglfw3.a) built from source, add imgui_lib build from source
target_link_libraries(fem glfw imgui_lib)

#link include directories
target_include_directories(fem PUBLIC "${INCLUDE_PUBLIC}")
