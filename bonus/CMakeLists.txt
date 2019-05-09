cmake_minimum_required(VERSION 3.4)

message("222222222222222222222222222\n")

project(NANATest)

file(GLOB SOURCE src/*.cpp)
file(GLOB HEADER src/*.h)


set(NANA_PATH "${CMAKE_CURRENT_LIST_DIR}/ext/nana" CACHE PATH "")
set(FMT_PATH "${CMAKE_CURRENT_LIST_DIR}/ext/fmt" CACHE PATH "")

message("333333333333333333333333333333333333333333333333\n")

if (NOT EXISTS "${NANA_PATH}/CMakeLists.txt")
    message(FATAL_ERROR "Please specify valid nana path!")
endif ()

message("44444444444444444444444444444444444\n")

if (NOT EXISTS "${FMT_PATH}/CMakeLists.txt")
    message(FATAL_ERROR "Please specify valid fmt path!")
endif ()

message("555555555555555555555555555555\n")

add_subdirectory(${NANA_PATH})
message("6666666666666666666666666\n")
add_subdirectory(${FMT_PATH})

message("111111111111111111111111\n")

add_executable(NANATest ${SOURCE} ${HEADER})
target_link_libraries(NANATest nana)
target_link_libraries(NANATest fmt)