REM *** batch program to create and embed our Macintosh resources ***
REM *** into the dll file, thereby creating a final qtx file ***
..\..\QTDevWin\Tools\Rez -i ".\Headers" -i "..\..\QTDevWin\RIncludes" ".\Sources\RTPRssmComponentVideo.r" -o ".\Debug\RTPRssmComponentVideo.qtr" -f
..\..\QTDevWin\Tools\Rezwack -d ".\Debug\RTPRssmComponentVideo.dll" -r ".\Debug\RTPRssmComponentVideo.qtr" -o ".\Debug\RTPRssmComponentVideo.qtx" -f