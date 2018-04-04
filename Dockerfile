FROM rocker/tidyverse

# Build in the open source Shiny server
RUN export ADD=shiny && bash /etc/cont-init.d/add

RUN apt-get update && apt-get install -y \
    python-pip \
    python-virtualenv && \
    apt-get clean && rm -rf /var/lib/apt/lists/

USER rstudio

RUN \
    R -e "install.packages('keras')" &&\
    R -e "library('keras'); install_keras()" && \
    R -e "devtools::install_github('rstudio/tfdeploy')"

USER root

EXPOSE 8089

