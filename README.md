# SHCPP

Shrimp's general usage C++ module based framework.

**Version:** 1.0.0


## Description
This repository provides easy access to a series of small modules dedicated for certain c++ tasks. Instead of downloading massive libraries you can just choose which modules will be downloaded for your project and use them straight away (after including proper header files).

## Modules
Each repository starting with **SH_** is a separate module that can be initialized in SHCPP via `modules.shrimp` list located in this repository (and by running `generate_modules.sh` bash file).

## Usage
Clone this repository to your project and locate `modules.shrimp` file. Edit this file to only include modules that you want to use in your project (you can either place `#` before module name in that file or remove that line completely to remove module).

Next, run `generate_modules.sh` bash script (after giving it `chmod +x`) and chosen modules should be cloned to appropriate folder inside `/modules`.

To use them in your project, just include module headers, ex.:

`#include <SHCPP/modules/SH_Algebra/include/algebra.hpp>`

or add `include` folders for each module to CMake of your project and then simply:

`#include <algebra.hpp>`


