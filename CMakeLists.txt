cmake_minimum_required(VERSION 3.31)
project(Sample_Operating_System)

set(CMAKE_CXX_STANDARD 20)

add_executable(Sample_Operating_System
        kernel/kernel.c)
