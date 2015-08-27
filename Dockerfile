FROM osixia/openldap:0.10.1
MAINTAINER ototadana@gmail.com

RUN sed -i /etc/hosts.allow -e 's/^slapd/#slapd/g' \
    && echo "slapd: ALL : ALLOW" >>/etc/hosts.allow
