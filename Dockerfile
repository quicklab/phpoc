FROM php-72
USER 0
RUN id
RUN INSTALL_PKGS="atomic-openshift-clients" \
 &&     yum  install -y ${INSTALL_PKGS} \
 &&     rpm -V ${INSTALL_PKGS} \
 &&     yum clean all
