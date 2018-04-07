echo off
cls
cd ..
set Folder=../WW1-and-Future
set archive=ww1-and-future.zip
set 7zip=C:\Program Files\7-Zip\7zG.exe

if not exist %7zip% (
echo 7zip installation not found!
echo.
echo there should be a file at %7zip%
echo errorlevel: %errorlevel%
goto exit
) else (
echo 7zip found
timeout 1
)

%7zip% a %archive% %Folder% -x!*.md -x!*.mod -x!.gitattributes -x!*.bat


cls
echo SUCCESS!
echo.
echo FINISHED COPYING

:exit
pause
exit
