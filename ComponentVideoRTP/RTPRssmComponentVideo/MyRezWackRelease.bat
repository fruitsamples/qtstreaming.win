REM *** batch program to create and embed our Macintosh resources ***
REM *** into the dll file, thereby creating a final qtx file ***
..\..\QTDevWin\Tools\Rez -i ".\Headers" -i "..\..\QTDevWin\RIncludes" ".\Sources\RTPRssmComponentVideo.r" -o ".\Release\RTPRssmComponentVideo.qtr" -f
..\..\QTDevWin\Tools\Rezwack -d ".\Release\RTPRssmComponentVideo.dll" -r ".\Release\RTPRssmComponentVideo.qtr" -o ".\Release\RTPRssmComponentVideo.qtx" -f