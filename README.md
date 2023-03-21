# PBS Kids Video Downloader
## This is a Video Downloader for The PBS Kids Video Website. (US Only)
### Requires ffmpeg and a Windows PC for this to work.

Current Version: 1.0

# Tutorial:
### 1. Download The Batch File
### 2. type in the show ID you would like to download (example: city-island)

the link should be like this: https://content.services.pbskids.org/v2/kidspbsorg/programs/show-id/
and not this: https://content.services.pbs.org/v2/kidspbsorg/programs/show-id/ (this has a username and password on it)

if you would have typed in the wrong id it would look like this: {"errorCode":404001,"errorMessage":"Page not found!"}

### 3. after you have typed in the right ID, Please Press Ctrl+F on Your Keyboard, then search for "video_type".

It Should Be "video_type":"Episode/Clip","URI":"https://urs.pbs.org/redirect/id/"

copy the video link that is https://urs.pbs.org/redirect/id/

### 4. open up the batch file and you will see this warning. just press any key. (or wait 30 seconds if you want to read the warning)
Then Copy The Video Link That You Have Copied, Then Press Enter.
Then Tell The File Name of Your Choice (example: test) [do not put .mp4 on it]

the video will start downloading and will completed in just seconds.

once the download is complete, you can continue downloading.

just type in yes to download more, or type in "no" to close. (default: yes)
