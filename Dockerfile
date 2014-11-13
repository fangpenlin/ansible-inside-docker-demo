FROM phusion/baseimage:0.9.15

RUN apt-get update && \
    apt-get install -y python python-dev python-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install ansible
ADD ansible-examples /srv/ansible

CMD ["/sbin/my_init"]
