# Singularity-CI Builders

This is an entrypoint to show you how you can build Singularity containers 
on different Continuous Integration Services. The templates provided are served
by Gitlab or Github, depending on where the CI services are commonly used.


--------------------------------------------------------------------------------

# General Templates

The following are general builders that you can customize to build on Travis, CircleCI, GitHub, or GitLab.

| Service  | Status | Template |  |
|---------|--------|--------|--|
|[GitLab](https://gitlab.com) | | [singularityhub/gitlab-ci](https://www.gitlab.com/singularityhub/gitlab-ci) | ![img/sregistry-gitlab-small.png](img/sregistry-gitlab-small.png) |
|[TravisCI](https://travis-ci.org) | [![Build Status](https://travis-ci.org/singularityhub/travis-ci.svg?branch=master)](https://travis-ci.org/singularityhub/travis-ci) | [singularityhub/travis-ci](https://www.github.com/singularityhub/travis-ci) | ![img/sregistry-travis-small.png](img/sregistry-travis-small.png) |
|[CircleCI](https://www.circleci.com) |  [![CircleCI](https://circleci.com/gh/singularityhub/circle-ci.svg?style=svg)](https://circleci.com/gh/singularityhub/circle-ci) | [singularityhub/circle-ci](https://www.github.com/singularityhub/circle-ci) | ![img/sregistry-circle-small.png](img/sregistry-circle-small.png) |
|[GitHub](https://github.com) | | [singularityhub/github-ci](https://www.github.com/singularityhub/github-ci) | ![img/sregistry-github-small.png](img/sregistry-github-small.png) |

--------------------------------------------------------------------------------

# Specific Templates

The following templates are more catered to specific deployments, and provided as requested from users like you! If you would like a custom
template example, please [open an issue](https://www.github.com/singularityhub/singularity-ci/).

| Service  | Storage                     | Template |
|--------- |-----------------------------|----------|
| CircleCI | Singularity Registry Server | [singularityhub/circle-ci-sregistry](https://github.com/singularityhub/circle-ci-sregistry) |


--------------------------------------------------------------------------------


# Static Registry Examples

For examples that deploy to [Singularity Static Registry](https://github.com/singularityhub/registry) types, see the [documentation here](https://github.com/singularityhub/registry/wiki). These examples include building with CircleCI and Google Build, and deploying to
various cloud storages. Again, it's very "choose your own adventure" like, so if you have a custom set of needs, please
reach out and @vsoch will help you!

For the above, you should find complete instructions in the corresponding README.md
provided in the GitLab/Github repositories. Build away, friends!


## Contributing

If you would like to contribute another CI service, or generally have questions,
please don't hesitate to [open an issue](https://www.github.com/singularityhub/singularity-ci/).
