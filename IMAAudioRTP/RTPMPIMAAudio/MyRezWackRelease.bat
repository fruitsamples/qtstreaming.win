REM *** batch program to create and embed our Macintosh resources ***
REM *** into the dll file, thereby creating a final qtx file ***
..\..\QTDevWin\Tools\Rez -i ".\Headers" -i "..\..\QTDevWin\RIncludes" ".\Sources\RTPMPIMAAudio.r" -o ".\Release\RTPMPIMAAudio.qtr" -f
..\..\QTDevWin\Tools\Rezwack -d ".\Release\RTPMPIMAAudio.dll" -r ".\Release\RTPMPIMAAudio.qtr" -o ".\Release\RTPMPIMAAudio.qtx" -f