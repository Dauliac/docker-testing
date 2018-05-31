FROM centos:latest

Workdir /app

RUN echo 0 > /etc/selinux/enforce \
    && echo "nameserver 1.1.1.1" >> /etc/resolv.conf \
    && yum update -y \
    && yum install -y wget screen unzip \
    && wget --no-cookies --no-check-certificate \
      --header "Cookie:\
      gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjre8-downloads-2133155.html;\
      oraclelicense=accept-securebackup-cookie" \
      "http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jre-8u171-linux-x64.rpm" \
    && yum localinstall -y jre-8u171-linux-x64.rpm \
    && mkdir minecraft \
    && cd minecraft \
    && wget https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar \
    && chmod +x minecraft_server.1.12.2.jar \
    && echo "eula=true" > eula.txt \
    && echo "iptables -A INPUT -p tcp --dport 8080 -j ACCEPT" >> /etc/sysconfig/iptables \
    && cd /usr/local \
    && wget http://mcmyadmin.com/Downloads/etc.zip \
    && unzip etc.zip \
    && mkdir ~/McMyAdmin \
    && cd ~/McMyAdmin \
    && wget http://mcmyadmin.com/Downloads/MCMA2_glibc26_2.zip \
    && unzip MCMA2_glibc26_2.zip

EXPOSE 25665
EXPOSE 8080

CMD cd ~/McMyAdmin && ./MCMA2_Linux_x86_64 -setpass ertyuiop -nonotice
