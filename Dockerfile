FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y \
    language-pack-ja \
    unzip
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8
RUN mkdir /data
WORKDIR /data
ENTRYPOINT ["unzip"]
CMD ["-hh"]
