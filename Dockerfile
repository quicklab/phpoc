FROM php-72
USER 0
RUN id
RUN INSTALL_PKGS="atomic-openshift-clients" \
 &&     yum --enablerepo=rhel-7-server-ose-3.9-rpms install -y ${INSTALL_PKGS} \
 &&     rpm -V ${INSTALL_PKGS} \
 &&     yum clean all
