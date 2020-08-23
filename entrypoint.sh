#!/bin/sh

install_python_dependencies() {
    requirements="pip install $1"
    eval "$requirements"
}


run_test_command() {
    command="coverage run -m $2"
    echo "Running ${command}"

    eval "${command}"

}

install_python_dependencies
run_test_command
