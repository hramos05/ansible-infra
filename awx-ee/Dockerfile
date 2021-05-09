FROM quay.io/ansible/awx-ee:0.2.0

USER root

RUN yum -y install \
ca-certificates \
gcc \
git \
git-lfs \
krb5-devel \
krb5-libs \
krb5-workstation \
libcurl-devel \
libxml2-devel \
openssl-devel \
python3-jmespath \
python3-netaddr \
python3-passlib \
python3-pycurl \
python38-devel \
python38-pytz \
python38-pyyaml \
python38-requests

# upgrade pip
RUN /usr/bin/python3 -m pip install --upgrade pip

# install python stuff
RUN pip install -r requirements.txt

# add Kerberos conf
COPY krb5.conf /etc/krb5.conf

USER 1000