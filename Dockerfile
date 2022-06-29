FROM docker.io/ubuntu:latest

RUN apt update

RUN apt install -y git \
    default-jdk

RUN git clone https://bitbucket.org/wishartlab/biotransformer3.0jar


COPY ./smiles2pred.sh /

ENTRYPOINT ["/smiles2pred.sh"]




