## Prerequisites

- [Docker](https://www.docker.com/)

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

## License

automated-tests-with-reCAPTCHA © Sam Yamashita. Released under the [MIT License](LICENSE).<br/>
Authored and maintained by Sam Yamashita with help from contributors.
