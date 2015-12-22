# docker-image-ml

Docker image for machine learing in python.

## Environment

* pyenv
* miniconda
* opencv
* numpy
* scipy
* pandas
* scikit-learn
* chainer

## How to use

Build the docker image.

    $ docker build -t shoya140/ml .

Run your program in the console.

    $ docker run -it --rm -v $PWD:root/dev/ shoya140/ml
    bash-4.2$ cd /root/dev/
    bash-4.2$ python example.py

Or run it as a command.

    $ docker run --name ml --rm -v $PWD:/root/dev/ shoya140/ml python /root/dev/example.py
    $ docker rm ml
