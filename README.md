## Prerequisites

- [Docker](https://www.docker.com/)

## Background

A lot of services use reCAPTCHA and want to run E2E tests. Google explains how to do that in the part ["I'd like to run automated tests with reCAPTCHA. What should I do?](https://developers.google.com/recaptcha/docs/faq). However, it is generally thought that E2E testing is not possible. For this reason, I created this repository to provide a demo of how to create a reCAPTCHA for testing, so you can easily try it out.

## Getting started

1. Clone the repository
   ```bash
   git clone git@github.com:sotayamashita/automated-tests-with-reCAPTCHA.git
   cd automated-tests-with-reCAPTCHA
   ```
1. Build an image from a Dockerfile
   ```bash
   docker build -t recaptcha-demo --build-arg RUBY_VERSION=2.6.5-alpine3.10 --build-arg BUNDLER_VERSION=2.0.2 .
   ```
1. Start a server
   ```bash
   docker run -p 4567:80 recaptcha-demo
   ```

Then, load [http://localhost:4567](http://localhost:4567/) in a browser :tada:

## Guide

### Development

Submit all changes directly to the master branch.

1. Fork the repository and create your branch from master.
1. Add changes
1. Format your code with rufo `bundle exec rufo .`
1. Create a pull request.

### Deployment

Automated deploying to production. Hosted on Heroku.

1. Merge a topic branch into `master`
1. Heroku deployes the app automatically

## License

automated-tests-with-reCAPTCHA © Sam Yamashita. Released under the [MIT License](LICENSE).<br/>
Authored and maintained by Sam Yamashita with help from contributors.
