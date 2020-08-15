FROM ubuntu:groovy

RUN apt-get update && \
    apt -y install software-properties-common &&\
    apt-add-repository --yes --update ppa:ansible/ansible &&\
    apt-get -y install ansible curl sudo

RUN useradd -ms /bin/bash -G sudo -u 1001 not_root
RUN echo "not_root:password" | chpasswd
USER not_root
CMD ["/usr/bin/bash"]