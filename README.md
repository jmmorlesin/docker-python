# docker-python
Proof of concept of docker image with specific version of python to use it as interpreter. 

With the usage of this docker image there is no need to install the specific version of python to execute python scripts.

## Requisites
In order to create the image, there is a file required to build it, in the current path has to exist the file requirements.txt with the dependencies of the code

## Usage
Create the docker image
```
make build
```
Run the python scripts
```
make run
```
This run task uses the run-python.sh file to execute python from the docker container, this file can be used to execute another python scripts.
