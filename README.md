# docker-image-ml

Docker image for machine learing in python.

## How to use

    # Build the image
    $ docker build -t shoya140/ml .

    # Run your program in the console
    $ docker run -it --rm -v $PWD:root/dev/ shoya140/ml
    bash-4.2$ cd /root/dev/
    bash-4.2$ python example.py

    # Or run as a command
    $ docker run --name ml --rm -v $PWD:/root/dev/ shoya140/ml python /root/dev/example.py
    $ docker rm ml
