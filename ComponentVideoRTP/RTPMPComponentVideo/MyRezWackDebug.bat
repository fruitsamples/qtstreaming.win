REM *** batch program to create and embed our Macintosh resources ***
REM *** into the dll file, thereby creating a final qtx file ***
..\..\QTDevWin\Tools\Rez -i ".\Headers" -i "..\..\QTDevWin\RIncludes" ".\Sources\RTPMPComponentVideo.r" -o ".\Debug\RTPMPComponentVideo.qtr" -f
..\..\QTDevWin\Tools\Rezwack -d ".\Debug\RTPMPComponentVideo.dll" -r ".\Debug\RTPMPComponentVideo.qtr" -o ".\Debug\RTPMPComponentVideo.qtx" -f