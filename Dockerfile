FROM centos:latest

RUN yum install -y wget && \
wget https://github.com/openshift/okd/releases/download/4.5.0-0.okd-2020-10-03-012432/openshift-client-linux-4.5.0-0.okd-2020-10-03-012432.tar.gz && \
yum remove -y wget && \
tar xzf openshift-client-linux-4.5.0-0.okd-2020-10-03-012432.tar.gz && \
mv oc kubectl /usr/bin/  && \
rm -f openshift-client-linux-4.5.0-0.okd-2020-10-03-012432.tar.gz README.md
