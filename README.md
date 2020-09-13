# GOES_downloader
Processing.org script to download GOES images from
https://rammb-slider.cira.colostate.edu/

This script uses a hardcoded start and end date, and downloads map tiles between those dates from the above website at the highest available temporal resolution (10 minutes).  The scirpt has six location tiles hardcoded, which it assembles into a larger image, overlays geographical state boundary lines, and saves each combined image with a filename containing the original date and time of acquisition.
