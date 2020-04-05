# DockeR
Get it dockeR? hardy har har har.

This is my attempt at running R and r studio in a docker container.

# Motivation
I had issues with local java/snowflake connection.  I hope this is a solution for this connection and allows our team to utilize R in a scalable way as this is my preferred language.

# Tech/framework used
-Docker

# Installation
1. Install Docker (if you have not already)
2. Clone this repo to your local machine
3. Open your terminal and navigate into the folder DockeR (relative paths require this)
```
cd projects/dockeR/
```
4. Run the following.  It will take awhile, be patient, it's worth it!
```
docker-compose up --build
```
5. Open localhost:50 in a web browser.
6. Be amazed by this miracle and send Alex a thank you ;)

# Tests
In the project/files folder there is a test_hello_world.R file.  Open it and run.

Yes the R jokes never end! 

# How to use?
Each time you start up the container just run
```
docker-compose up
```

To stop the container use ctrl c.  

You can run the container in detached mode
```
docker-compose up -d
```
BUT BEWARE that you will need to shut it down later and we don't want to forget
```
docker-compose down
```
Now that you are set up, code in either R environment.  The only change is that you will need to add to the file install_packages.R and rebuild the docker container (docker compose up --build) if you need other libraries.  Note that you can specify versions here too
```{r}
require(devtools)
install_version("ggplot2", version = "0.9.1", repos = "http://cran.us.r-project.org")
```

# Credits
Big thanks to https://www.rocker-project.org for developing all these base images for R!  

Also thanks to Vladimir Zhbanko for his work that helped me learn!
-https://www.youtube.com/watch?v=JHn7zADtFGM
-https://github.com/vladdsm/docker-r-h2o-tidyverse


Alex Blohm