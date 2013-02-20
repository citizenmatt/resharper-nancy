@echo off
setlocal enableextensions

mkdir NancySupport.7.1 2> NUL
copy /y ..\src\resharper-nancy\bin\Release\*.* NancySupport.7.1\
