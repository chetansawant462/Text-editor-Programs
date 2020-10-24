@echo off
color 0a
title -------Game Youtube-------

:menu
cls
echo 1)Start
echo 2)How to play
echo 3)Exit
set /p number=
if %number% == 1 goto Startgame
if %number% == 2 goto How to play
if %number% == 3 goto Exit

:How to play
cls
echo Press the number & hit enter.
echo do you want to go back ?(y/n)
set/p menugoto=
if %menugoto% == y goto menu
if %menugoto% == n goto How to play

:Exit
cls
echo Thanks for playing

:Startgame
cls 
echo Please type your name.
set /p name=
echo Welcome %name% in this game of quiz
echo Do you want to test you ?(y/n)
set /p start=
if %start% == y goto level1
if %start% == n goto menu

:level1
cls
echo So let us start%name%.
echo what is 1000 - 648?
echo 1)652     2)352
echo 3)644     4)342
set /p answer=
if %answer% == 1 goto wrong1
if %answer% == 2 goto correct1
if %answer% == 3 goto wrong1
if %answer% == 4 goto wrong1
goto level1

:wrong1
cls
echo Sadly %name% you went wrong!
echo Anyway do you want to retry ?(y/n)
set /p retry=
if %retry% == y goto level1
if %retry% == n goto menu
goto wrong1

:correct1
cls
echo oh yes %name% you are right.
echo Do you want to promote in next level ?(y/n)
set /p nl1=
if %nl1% == y goto level2
if %nl1% == n goto menu
goto correct1

:level2
cls
echo So %name% this is the next level.
echo And your question is......
echo what 252 + 654 ?
echo 1)841      2)852
echo 3)906      4)912
set /p command=
if %command% == 1 goto wrong2
if %command% == 2 goto wrong2
if %command% == 3 goto correct2
if %command% == 4 goto wrong2
goto level2

:Wrong2
cls
echo oh no %name% you went wrong!
echo Do you want to retry ?(y/n)
set /p wa1=
if %wa1% == y goto level2
if %wa1% == n goto menu

:correct
cls
echo Congratulations %name% you have won the game
goto correct2

 