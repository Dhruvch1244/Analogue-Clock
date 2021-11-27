echo off
echo %cd%
cls
echo "building object file"
gcc -c "source.cpp" -I"%cd%\libs"
echo "building exe file"
g++ source.o -o run.exe -L"%cd%\libs" -lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32
echo "running exe file"
run.exe
pause