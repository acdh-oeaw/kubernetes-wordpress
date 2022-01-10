# kubernetes-wordpress

First build the docker image, my example name is: nczirjak/acdhch-wp But you canchange it to anything.

docker build -t nczirjak/acdhch-wp:latest .

If the build is ready then change the image name inside the docker-compose.yml -> wordpress ->  image

And then simply run the docker-compose up

You can find the bitnami wordpress environment variables list here:
- https://github.com/bitnami/bitnami-docker-wordpress#user-and-site-configuration
