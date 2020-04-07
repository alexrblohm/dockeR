FROM rocker/verse
COPY . /home/rstudio/project

## copy files
ADD install_packages.R /

## install packages 
RUN Rscript /install_packages.R

EXPOSE 8787

#WORKDIR /home/rstudio/project

ENV DISABLE_AUTH=true
#ENV USER=guest  
#ENV USERID=424696750
#ENV GROUPID=1632395524 
#ENV UMASK=022
#ENV PASSWORD=guest


