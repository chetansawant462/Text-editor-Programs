@echo off
Title Clock
@mode con cols=35 lines=7
color 0a
:main
cls
echo.
echo Time: %time%
echo.
echo Date: %date%
echo.
echo Birthday
echo.
ping -n 2 0.0.0.0>nul
goto main
