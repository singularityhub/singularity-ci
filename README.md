# Singularity-CI

[![Build Status](https://travis-ci.org/singularityhub/singularity-ci.svg?branch=master)](https://travis-ci.org/singularityhub/singularity-ci)

This is a simple example of how you can use Continuous Integration (Travis or CircleCI) to build your images! The cool part is that you have complete power to configure the build, and then to push to your storage endpoint of choice.

## Getting Started

### 0. Fork this repository

You can clone and tweak, but it's easiest likely to get started with our example files and edit them as you need.

### 1. Choose your CI Service

First you should choose to work with .travis or circle-ci.

 - Travis offers [cron jobs](https://docs.travis-ci.com/user/cron-jobs/) so you could schedule builds at some frequency, along with [GPU Builders](https://circleci.com/docs/2.0/gpu/) if you want/need that sort of thing.
 - CircleCI offers [artifacts](https://circleci.com/docs/2.0/artifacts/) (up to 3GB) so you could technically run a pipeline to produce some output, save the output as an artifact, and upload it somewhere or just retrieve with curl.
 

### 2. Add your Recipe(s)

For the example here, we have a single recipe named "Singularity" that is provided as an input argument to each of the build
scripts. You could add another recipe, and then of course call the build to happen more than once. The build script will name the image based on the recipe, and you of course can change this up.

### 3. Customize the Build Steps

The basic steps for both Travis and Circle are the following:

 - Install Singularity. We install from the master branch to get the current production. You can change this as needed, see the `before_install` script in both the [.travis] and [.circleci] folders.
 - Run build.sh with inputs as a path to a recipe file, and (for other examples) an optional URI (unique resource identifier) to use to upload to some storage.

### 4. Connect to CI

If you go to your [Travis Profile](https://travis-ci.org/profile/vsoch) you can usually select a Github organization (or user) and then the repository, and then click the toggle button to activate it to build on commit --> push.


That's it for the basic setup! At this point, you will have a continuous integration service that will build your container from a recipe each time that you push. The next step is figuring out where you want to put the finished image(s).


## Storage!

Once the image is built, where can you put it? An easy answer is to use the [Singularity Global Client](https://singularityhub.github.io/sregistry-cli) and choose [one of the many clients](https://singularityhub.github.io/sregistry-cli/clients) to add a final step to push the image. This will come down to the following:

 - installing `sregistry` to the builder with pip
 - Saving the credentials / other environment variables that your client needs to your [repository settings](https://docs.travis-ci.com/user/environment-variables/#Defining-Variables-in-Repository-Settings) where they will be encrypted and in the environment.
 - adding a line to your .travis.yml to do an sregistry push action to the endpoint of choice. You can also do other sanity checks like testing if the container runs as you would expect, etc. We have provided example "push" commands commented out in the .travis.yml and .circlci files for you to see.
