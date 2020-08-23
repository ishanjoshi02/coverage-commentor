# Introduction


The `coverage-commentor` is a GitHub Action that is supposed to run when you push changes to a Pull Request.
![GitHub Action](https://coletiv.com/static/35b6a79fea4a7289acb6796cd4ad05b4/a6c62/android-github-actions-setup-image.jpg "GitHub Actions")

## Inputs

### requirements

**Required** The requirements such as the testing framework that are needed to run the test suite.

By default, it installs all the latest version of `pytest`, `unittest` and `nosetest`.

It is highly recommended that you pass a specific framework along with the correct version.

### testRunCommand

**Required** The command that you need to execute to start the test suite.

E.g. `pytest arg1 arg2`, `unittest tests.myTests -v`

## Example Usage

```yml

on: pull_request

jobs:
    coverage_commentor_job:
        runs-on: ubuntu-latest. # Docker based GitHub Actions only run on Linux OSs.
        name: Coverage Commentor
        uses: actions/coverage-commentor@v1 # Replace with correct version.
        with:
            requirements: "pytest"
            testRunCommand: "pytest"
```
