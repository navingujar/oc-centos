FROM centos:latest

RUN yum install -y wget
RUN wget https://github.com/openshift/okd/releases/download/4.5.0-0.okd-2020-10-03-012432/openshift-client-linux-4.5.0-0.okd-2020-10-03-012432.tar.gz
RUN yum remove -y wget
RUN tar xzf openshift-client-linux-4.5.0-0.okd-2020-10-03-012432.tar.gz
RUN cp -pr oc kubectl /usr/bin/
RUN rm -f openshift-client-linux-4.5.0-0.okd-2020-10-03-012432.tar.gz README.md
