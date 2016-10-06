FROM quay.io/travisci/travis-ruby
MAINTAINER Vanessa Sochat <vsochat@stanford.edu>

# Install Singularity
RUN sudo sed -i -e 's/^Defaults\tsecure_path.*$//' /etc/sudoers
RUN sudo apt-get update
RUN sudo apt-get install flawfinder
RUN git clone http://www.github.com/gmkurtzer/singularity
WORKDIR singularity
RUN ./autogen.sh
RUN ./configure --prefix=/usr/local
RUN make
RUN sudo make install
CMD /bin/bash
