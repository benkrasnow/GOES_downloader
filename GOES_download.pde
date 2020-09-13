

void setup() {
  
    int dryrun = 0;  // When dryrun==1, do not download the images, just print intended download targets to console
  
   int curMonth = 9;  //Starting point
   int curDay = 5;
   int curHour = 8;
   int curMin = 0;
   
   int endMonth = 9;  //Stopping point.  Images are downloaded at highest temporal resolution (10 minute interval)
   int endDay = 12;
   int endHour = 20;
   int endMin = 0;
   
  
   size(1356,2034);
   background(0);
   
   //The map overlay tiles only need to be downloaded once.  The PNG is contains white lines on clear background, and will be displayed on top of the image tiles
   String url = "https://rammb-slider.cira.colostate.edu/data/map/goes-17/full_disk/white/20191122080033/04/001_009.png";
   PImage r1c9Overlay = loadImage(url, "png");
   url = "https://rammb-slider.cira.colostate.edu/data/map/goes-17/full_disk/white/20191122080033/04/001_010.png";
   PImage r1c10Overlay = loadImage(url, "png");
   
   url = "https://rammb-slider.cira.colostate.edu/data/map/goes-17/full_disk/white/20191122080033/04/002_009.png";
   PImage r2c9Overlay = loadImage(url, "png");
   url = "https://rammb-slider.cira.colostate.edu/data/map/goes-17/full_disk/white/20191122080033/04/002_010.png";
   PImage r2c10Overlay = loadImage(url, "png");
   
   url = "https://rammb-slider.cira.colostate.edu/data/map/goes-17/full_disk/white/20191122080033/04/003_009.png";
   PImage r3c9Overlay = loadImage(url, "png");
   url = "https://rammb-slider.cira.colostate.edu/data/map/goes-17/full_disk/white/20191122080033/04/003_010.png";
   PImage r3c10Overlay = loadImage(url, "png");
   
   
   PImage webImg = createImage(678,678,0);
   while(true)  // We'll break out of the loop when the stopping time has been reached
   {
   
           if(dryrun == 0)
           {
                 url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + "/goes-17---full_disk/geocolor/2020"
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + String.format("%02d", curHour)
                 + String.format("%02d", curMin)
                 + "31/04/001_009.png";      
                 webImg = loadImage(url, "png");
   
                 if( webImg == null)  //The loadImage function doesn't throw an exception, rather it just returns a null if something went wrong
                   {
                       url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                       + String.format("%02d", curMonth)
                       + String.format("%02d", curDay)
                       + "/goes-17---full_disk/geocolor/2020"
                       + String.format("%02d", curMonth)
                       + String.format("%02d", curDay)
                       + String.format("%02d", curHour)
                       + String.format("%02d", curMin)
                       + "32/04/001_009.png";               //The GOES image archive has images with 10-minute interval, but the number of seconds-past-the-minute is sometimes 32 and sometimes 31
                       webImg = loadImage(url, "png");      // I can't see any way to determine which is correct for a given date/time other than try both.
                   }
 
 
                if(webImg != null)
                   {
                     image(webImg, 0, 0);               //This will display the image to the main window
                   }
               
               
               
                url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + "/goes-17---full_disk/geocolor/2020"
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + String.format("%02d", curHour)
                 + String.format("%02d", curMin)
                 + "31/04/001_010.png"; 
                 webImg = loadImage(url, "png");

                 if (webImg == null)
                   {
                     url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + "/goes-17---full_disk/geocolor/2020"
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + String.format("%02d", curHour)
                     + String.format("%02d", curMin)
                     + "32/04/001_010.png"; 
                     webImg = loadImage(url, "png");
                   }


                if(webImg != null)
                   {
                     image(webImg, 678, 0);
                   }
               
               
                url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + "/goes-17---full_disk/geocolor/2020"
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + String.format("%02d", curHour)
                 + String.format("%02d", curMin)
                 + "31/04/002_009.png"; 
                 webImg = loadImage(url, "png");
                 
                 if (webImg == null)
                   {
                     url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + "/goes-17---full_disk/geocolor/2020"
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + String.format("%02d", curHour)
                     + String.format("%02d", curMin)
                     + "32/04/002_009.png"; 
                     webImg = loadImage(url, "png");
                   }  
                 
                 
                 if(webImg != null)
                   {
                     image(webImg, 0, 678);
                   }
               
                url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + "/goes-17---full_disk/geocolor/2020"
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + String.format("%02d", curHour)
                 + String.format("%02d", curMin)
                 + "31/04/002_010.png"; 
                 webImg = loadImage(url, "png");
               
                 if (webImg == null)
                   {
                     url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + "/goes-17---full_disk/geocolor/2020"
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + String.format("%02d", curHour)
                     + String.format("%02d", curMin)
                     + "32/04/002_010.png"; 
                     webImg = loadImage(url, "png");
                   }
                   
                 if(webImg != null)
                   {
                     image(webImg, 678, 678);
                   }
                   
                 url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + "/goes-17---full_disk/geocolor/2020"
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + String.format("%02d", curHour)
                 + String.format("%02d", curMin)
                 + "31/04/003_009.png"; 
                 webImg = loadImage(url, "png");
                 
                 if (webImg == null)
                   {
                     url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + "/goes-17---full_disk/geocolor/2020"
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + String.format("%02d", curHour)
                     + String.format("%02d", curMin)
                     + "32/04/003_009.png"; 
                     webImg = loadImage(url, "png");
                   }
                   
                 if(webImg != null)
                   {
                     image(webImg, 0, 1356);
                   }
               
                url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + "/goes-17---full_disk/geocolor/2020"
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + String.format("%02d", curHour)
                 + String.format("%02d", curMin)
                 + "31/04/003_010.png"; 
                 webImg = loadImage(url, "png");
               
                 if (webImg == null)
                   {
                     url = "https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + "/goes-17---full_disk/geocolor/2020"
                     + String.format("%02d", curMonth)
                     + String.format("%02d", curDay)
                     + String.format("%02d", curHour)
                     + String.format("%02d", curMin)
                     + "32/04/003_010.png"; 
                     webImg = loadImage(url, "png");
                   }
                   
                 if(webImg != null)
                   {
                     image(webImg, 678, 1356);
                   }
               
               
               
               
               
               
                 
                 image(r1c9Overlay, 0, 0);               //draw the map overlay tiles onto the image tiles
                 image(r1c10Overlay, 678, 0);
                 image(r2c9Overlay, 0, 678);
                 image(r2c10Overlay, 678, 678);
                 image(r3c9Overlay, 0, 1356);
                 image(r3c10Overlay, 678, 1356);
               
               
               
                
                String outFileName = "2020"          //generate a filename and save the image containing all of the image tiles, overlayed with the map tiles
                + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + String.format("%02d", curHour)
                 + String.format("%02d", curMin)
                 + ".jpg";
                saveFrame(outFileName);
           }
          
          
          println("https://rammb-slider.cira.colostate.edu/data/imagery/2020" 
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + "/goes-17---full_disk/geocolor/2020"
                 + String.format("%02d", curMonth)
                 + String.format("%02d", curDay)
                 + String.format("%02d", curHour)
                 + String.format("%02d", curMin)
                 + "31/04/003_010.png");
                 
          curMin = curMin + 10;
          if (curMin == 60)
            {
              curMin = 0;
              curHour++;
            }
          if(curHour == 24)
            {
              curHour = 0;
              curDay++;
            }
    
       if (curMonth == endMonth && curDay == endDay && curHour == endHour)
         {
           break;
         }
                   
   }
  
  
  
}





void draw() {
 
}
