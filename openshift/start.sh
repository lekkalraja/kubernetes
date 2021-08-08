sudo usermod -a -G libvirt $USER
newgrp libvirt
export PATH="/home/raja/Documents/coding/kubernetes/openshift/minishift:$PATH"
export PATH="/home/raja/Documents/coding/kubernetes/openshift/oc:$PATH"
minishift start
oc login -u developer -p developer