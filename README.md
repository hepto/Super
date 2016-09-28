# Super++

### HOW TO BUILD

1. Create the Docker image from the root folder.

   `docker build -t superplusplus ./docker/`

2. Run the image - will automatically exaceute ionic serve and wait on the console

   `docker run -it --rm -p 8000:8000 -p 35729:35729 -v ${PWD}:/project --name "superplusplus" superplusplus`

3. Open a browser at

   `http://localhost:8000/`

4. To connect from another terminal

   `docker exec -it superplusplus bash`
