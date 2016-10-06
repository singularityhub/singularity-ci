# Singularity-CI

This will be an extension of Travis-CI to run (locally) standard tests for a Singularity image. Currently, it is the `travis-ruby` (quay.io/travisci/travis-ruby) extended to include Singularity.


### Usage
Here are basic instructions for building and running the container.

      git clone https://www.github.com/singularityware/singularity-ci
      cd singularity-ci
      docker build -t vanessa/singularity-ci .
      docker run -it --privileged vanessa/singularity-ci /bin/bash

Note that "privileded" is needed to correctly be able to build images. The travis user can be logged into via:

      su - travis

More details will follow as the container is developed. This (hopefully) will be a solution that can scale to run testing (and return output files) for Singularity images for [Singularity Hub](https://www.github.com/singularityware/singularity-hub)
