Hello everyone! 

This branch is dedicated for a project I've crafted for a containerized MySQL server. The 'steps.txt' file details the steps I've completed to mess around with the official MySQL docker image and creating a nice little database built upon it.

The Dockerfile, sqlfile.sh and internetconfig.cnf are a part of something a tad more interesting, at least if you ask me; I've created a docker image of MySQL from Ubuntu:18.04. Here is how it works:

First, we force the container to run the apt-update and apt-upgrade commands. Then, we delete the default configuration of the root user created by MySQL. Then, with the use of our script file, we add a user of our own, defining all of the relevant credentials. Once we're done with that, we force our container  to listen on 0.0.0.0, so we could get an indication of how it is operating. Last but not least, we expose port 3306 (as it is the default MySQL port), we attach a volume to it so we could add a custom configuration file and/or our own sql files, and run the script as well as the MySQL server itself as processes. 

Took a bit of messing around, but we made it! 
