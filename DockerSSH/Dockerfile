FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server
RUN apt-get update &&  apt-get install -y ansible net-tools sudo
RUN mkdir /var/run/sshd
RUN echo 'root:pass' | chpasswd
RUN sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

ENV NOTVISIBLE="in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN useradd -rm -d /home/varenik -s /bin/bash -g root -G sudo -u 1001 varenik 
RUN echo 'varenik:pass2' | chpasswd

USER varenik
WORKDIR /home/varenik

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

