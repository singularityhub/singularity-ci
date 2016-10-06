# Singularity-CI

This will be a container that is solely responsible for testing Singularity images, and returning a JSON response with test results and built images. For now, it simply is an installation of Singularity.

### Usage
Here are basic instructions for building and running the container.

      git clone https://www.github.com/singularityware/singularity-ci
      cd singularity-ci
      # Add Singularity file to PWD here
      docker build -t vanessa/singularity-ci .

then 

      docker run --privileged -v $PWD:/data vanessa/singularity-ci


And then somehow this image will be integrated into [singularity-hub](https://www.github.com/singularityware/singularity-hub) to run the testing, and (eventually) should be served on an external server. I think it would make sense to have images saved in a common place (like Amazon s3) for both applications to talk to (and this would need to be implemented).
