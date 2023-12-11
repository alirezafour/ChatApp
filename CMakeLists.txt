cmake_minimum_required(VERSION 3.16..3.26)

# Silence warning about PROJECT_VERSION
cmake_policy(SET CMP0048 NEW)

#project setup
project(myApp
        VERSION 0.0.1
        DESCRIPTION ""
        HOMEPAGE_URL "%%myurl%%"
        LANGUAGES CXX C
)


# specify the C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# cpm dependency
include(cmake/CPM.cmake)

# project file and executable
file(GLOB SOURCES
     "src/*.h"
     "src/*.cpp"
)

add_executable(${PROJECT_NAME} ${SOURCES})

# enable tesing
option(ENABLE_TESTING "Enable the tests" OFF)
if(ENABLE_TESTING)
  enable_testing()
  add_subdirectory(test)
endif()
