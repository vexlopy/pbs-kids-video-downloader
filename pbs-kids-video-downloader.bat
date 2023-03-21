@echo off
title PBS Kids Video Downloader

:warning
color c
echo This script downloads videos from the PBS Kids Video Site.
echo PBS Kids is not avalible outside the United States.
echo If you are Living outside the USA, Please Close This Window.
echo.
echo FFmpeg needs to be installed for this to work.
echo.
echo A complete list of Shows Can Be Viewed Online:
echo https://content.services.pbskids.org/v2/kidspbsorg/home/
echo.
echo Make Sure You Go To The Show You Choose To Download:
echo https://content.services.pbskids.org/v2/kidspbsorg/programs/city-island/
echo.
echo look for the Link to Download the Episode or Clip:
echo "video_type":"Episode/Clip","URI":"Link To The Video"
echo.
TIMEOUT /T 30

:download
WHERE ffmpeg
IF %ERRORLEVEL% NEQ 0 echo ffmpeg wasn't found. Please make sure it is installed correctly. && pause && exit
color 7
cls
set /p video=Enter The URL of The Video You Would Like To Download: 
set /p filename=Enter Enter The File Name (do not put.mp4): 

echo Downloading video...
ffmpeg -i "%video%" -vcodec copy -acodec copy "%userprofile%\Videos\%filename%.mp4"

@ECHO off
cls
color a
:end
ECHO Video has been downloaded. It has been Saved To Your "Videos" Folder. Do You Want To Continue Downloading More?
set choice=
set /p choice=Choice: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto yes
if '%choice%'=='y' goto yes
if '%choice%'=='yes' goto yes
if '%choice%'=='2' goto no
if '%choice%'=='n' goto no
if '%choice%'=='no' goto no
ECHO.
:yes
goto download
goto no
:no
exit
