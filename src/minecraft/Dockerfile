FROM centos:latest
Workdir /tmp

RUN echo 0 > /etc/selinux/enforce \
    && echo "nameserver 1.1.1.1" >> /etc/resolv.conf \
    && yum update -y \
    && yum install -y wget screen unzip \
    && wget --no-cookies --no-check-certificate \
       --header "Cookie: \
       gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjre8-downloads-2133155.html;\
       oraclelicense=accept-securebackup-cookie" \
       "http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jre-8u171-linux-x64.rpm" \
    && yum localinstall -y jre-8u171-linux-x64.rpm \
    && mkdir /app/ \
    && mkdir /app/minecraft \
    && mkdir /app/mcmyadmin \
    && wget http://mcmyadmin.com/Downloads/etc.zip -O /usr/local/etc.zip \
    && unzip /usr/local/etc.zip \
    && mv /usr/local/etc.zip /tmp/ \
    && wget http://mcmyadmin.com/Downloads/MCMA2_glibc26_2.zip \
        -O /app/mcmyadmin/mcmyadmin.zip \
    && unzip /app/mcmyadmin/mcmyadmin.zip \
    && mv /app/mcmyadmin/mcmyadmin.zip /tmp/

EXPOSE 25665
EXPOSE 8080

CMD ["./app/mcmyadmin/MCMA2_Linux_X86_64 -setpass ertyuiop -nonotice"]
