#!/usr/bin/env bash

echo "# install IRkernel"
# https://github.com/IRkernel/IRkernel
# http://irkernel.github.io/installation/

sudo R -e "install.packages('devtools', repos='https://cloud.r-project.org'); \
devtools::install_github('IRkernel/IRkernel')"
#su vagrant -c "R -e 'IRkernel::installspec()' "
#sudo -u vagrant sh -c "R -e 'IRkernel::installspec()' "
sudo su vagrant -c "R -e 'IRkernel::installspec()' "
