default: docker_build

    docker_build:
		IMAGE_NAME="thalesog/adminer:local" sh ./hooks/build
