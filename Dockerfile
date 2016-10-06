FROM python:3.5
MAINTAINER Vanessa Sochat <vsochat@stanford.edu>

# Install Singularity
RUN apt-get update
RUN apt-get install -y flawfinder
RUN git clone http://www.github.com/gmkurtzer/singularity
WORKDIR singularity
RUN ./autogen.sh
RUN ./configure --prefix=/usr/local
RUN make
RUN make install
CMD /bin/bash
