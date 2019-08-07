FROM ubi7/php-72

RUN INSTALL_PKGS="atomic-openshift-clients" \
 &&     yum  install -y ${INSTALL_PKGS} \
 &&     rpm -V ${INSTALL_PKGS} \
 &&     yum clean all
