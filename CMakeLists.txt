cmake_minimum_required(VERSION 3.10...3.28)

project(emt-math LANGUAGES C CXX)

add_library(emt-linearmath INTERFACE)
add_library(emt::linearmath ALIAS emt-linearmath)
target_include_directories(emt-linearmath
    INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include
)

if(_BUILD_EXAMPLE)
    # add_executable(sample sample/example.cpp)
    # target_link_libraries(sample PUBLIC emt::linearmath)

    # include(FetchContent)

    # FetchContent_Declare(
    #     glm
    #     GIT_REPOSITORY https://github.com/g-truc/glm
    #     GIT_TAG master
    #     GIT_SHALLOW TRUE
    #     GIT_PROGRESS TRUE
    # )

    # FetchContent_MakeAvailable(glm)
    # target_compile_definitions(glm INTERFACE GLM_FORCE_SILENT_WARNINGS)

    # target_link_libraries(sample PUBLIC glm)
    include(ExternalProject)

    set(install_dir ${CMAKE_SOURCE_DIR}/external)
    set(lib_glm glm)
    ExternalProject_Add(
        ${lib_glm}
        PREFIX ${CMAKE_CURRENT_BINARY_DIR}/dep/${lib_glm}
        GIT_REPOSITORY https://github.com/g-truc/glm
        GIT_TAG origin/master
        GIT_SHALLOW ON
        UPDATE_DISCONNECTED ON
        CMAKE_ARGS  -DCMAKE_INSTALL_PREFIX:PATH=${install_dir}
                    #-CCMAKE_INSTALL_PACKAGEDIR:PATH=${install_dir}/cmake
                    -DBUILD_SHARED_LIBS:BOOL=OFF
                    -DBUILD_STATIC_LIBS:BOOL=OFF
                    -DGLM_TEST_ENABLE:BOOL=OFF
    )

    add_executable(sample sample/example.cpp)

    add_dependencies(sample ${lib_glm})

    target_link_libraries(sample PUBLIC emt::linearmath)

    target_include_directories(sample PUBLIC ${install_dir}/include)

endif()