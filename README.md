# libvoikko-python-docker

This is a dockerized version of the famous linguistic software, Voikko, run on Pyhton runtime.


## Voikko
More info about **voikko** and **libvoikko** from the project sites.
- https://voikko.puimula.org/
- https://github.com/voikko

## Instructions
1. Git clone this project
```sh
git clone 
cd libvoikko-docker
```
2. Define your python application (which is utlizing libvoikko library) in the `app.py` file or replace it with your existing application. 
3. Define all your python dependencies / libraries in the `requirements.txt` file.

4. Build the docker image
```sh
docker build -t libvoikko-docker .
```
5. Run the docker container
```
docker run -it --mount type=bind,source="$(pwd)"/data,target=/app/data libvoikko-docker:latest
```
`--mount` flag is used to sync any input or output files between the container and the host. **This script is set to mount the `data` folder so be sure to use it in the application or update the run script accordingly**.