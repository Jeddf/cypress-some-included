# cypress-some-included - a lightweight Cypress docker image

A Docker image like `cypress/included` but without all the browsers (just the
default Electron-based one) and based on a different base image so it's smaller
(by about 1.500MB).

It is designed to be a drop-in replacement for `cypress/included`, but lacks
many of the packages that that image comes with. For CI use cases where
this images is used to run tests on an external server it should be fine, though.

## Usage

`docker run -v $MY_CYPRESS_JSON_DIR:/e2e -w /e2e jeddf/cypress-some-included`

See the `cypress/included` for further documentation.
