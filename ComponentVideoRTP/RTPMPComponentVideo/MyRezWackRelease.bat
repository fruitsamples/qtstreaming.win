REM *** batch program to create and embed our Macintosh resources ***
REM *** into the dll file, thereby creating a final qtx file ***
..\..\QTDevWin\Tools\Rez -i ".\Headers" -i "..\..\QTDevWin\RIncludes" ".\Sources\RTPMPComponentVideo.r" -o ".\Release\RTPMPComponentVideo.qtr" -f
..\..\QTDevWin\Tools\Rezwack -d ".\Release\RTPMPComponentVideo.dll" -r ".\Release\RTPMPComponentVideo.qtr" -o ".\Release\RTPMPComponentVideo.qtx" -f