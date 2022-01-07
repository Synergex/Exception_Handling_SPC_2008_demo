rem 
rem *************************************************************
rem set the base environment
rem *************************************************************
rem 

@echo off

set SRCDEV=C
set ROOTFOLDER=SPC2008_ExceptionHandling
set DEVROOT=%SRCDEV%:\%ROOTFOLDER%
set PATH=%PATH%;%DEVROOT%\bat

rem *************************************************************
rem Define here the required environment variables
rem *************************************************************

set RPSMFIL=%DEVROOT%\rps\rpsmain.ism
set RPSTFIL=%DEVROOT%\rps\rpstext.ism

set INC=%DEVROOT%\applications\inc
set EXE=%DEVROOT%\exe

