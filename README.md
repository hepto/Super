HOW TO BUILD

Create the Docker image:

From root folder.

docker build -t superplusplus ./docker/

Run the image - will automatically exaceute ionic serve and wait on the console

docker run -it --rm -p 8000:8000 -p 35729:35729 -v ${PWD}:/project --name "superplusplus" superplusplus

To connect from another terminal

docker exec -it superplusplus bash

open browse at http://localhost:8000/