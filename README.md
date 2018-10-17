# Singularity-CI Builders

This is an entrypoint to show you how you can build Singularity containers 
on different Continuous Integration Services. This link was originally serving just
an example with travis-ci, and now will be updated to include more than that.

## Working

| Service | Status | Github | |
|---------|--------|--------|--|
|[TravisCI](https://travis-ci.org) | [![Build Status](https://travis-ci.org/singularityhub/travis-ci.svg?branch=master)](https://travis-ci.org/singularityhub/travis-ci) | [https://www.github.com/singularityhub/travis-ci](https://www.github.com/singularityhub/travis-ci) | ![img/sregistry-travis.png](img/sregistry-travis.png) |

For each of the above, you should find complete instructions in the corresponding README.md
provided in the Github repositories. Build away, friends!

## Development

| Service | Status | Github | | Reason |
|---------|--------|--------|--|-------|
|[CircleCI](https://www.circleci.com) | [singularityhub/circle-ci](https://www.github.com/singularityhub/circle-ci) | [![CircleCI](https://circleci.com/gh/singularityhub/circle-ci.svg?style=svg)](https://circleci.com/gh/singularityhub/circle-ci)) |  ![img/sregistry-circle.png](img/sregistry-circle.png) | Does not support /mnt namespace |

## Contributing

If you would like to contribute another CI service, or generally have questions,
please don't hesitate to [open an issue](https://www.github.com/singularityhub/singularity-ci/).
