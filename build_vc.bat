call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x64

cd tcl\win
nmake -f makefile.vc MACHINE=AMD64
nmake -f makefile.vc MACHINE=AMD64 OPTS=symbols 

cd ..\..\tk\win
set TCLDIR=..\..\tcl
nmake -f makefile.vc MACHINE=AMD64
nmake -f makefile.vc MACHINE=AMD64 OPTS=symbols 

cd ..\..\tix\win
set TCL_DIR=..\..\tcl
set TK_DIR=..\..\tk
nmake -f makefile.vc MACHINE=AMD64
nmake -f makefile.vc MACHINE=AMD64 OPTS=symbols NODEBUG=0 TCL_DBGX=g TK_DBGX=g

pause