### OpenShift


#### Installation on Ubuntu
* Install `libvirt` and `qemu-kvm`: `sudo apt install qemu-kvm libvirt-daemon libvirt-daemon-system`
* Add yourself to the `libvirt(d)` group: `sudo usermod -a -G libvirt $USER`
* Update your current session to apply the group change: `newgrp libvirt`
* Install the `KVM driver` binary: `sudo curl -L https://github.com/dhiltgen/docker-machine-kvm/releases/download/v0.10.0/docker-machine-driver-kvm-ubuntu16.04 -o /usr/local/bin/docker-machine-driver-kvm`
* Make it executable:  `sudo chmod +x /usr/local/bin/docker-machine-driver-kvm`

##### Option - 1
* Download the latest version of minishift cdk from: `https://developers.redhat.com/products/cdk/download/`
* Copy the downloaded file in to `/usr/local/bin` folder
* Create a sim-link for minishift: `sudo ln -sf cdk-3.6.0–1-minishift-linux-amd64 minishift`
* Initialize the installation : `sudo minishift setup-cdk`
* Start the minishift : `minishift start`

##### Option - 2
* Add yourself to the `libvirt(d)` group: `sudo usermod -a -G libvirt $USER`
* Update your current session to apply the group change: `newgrp libvirt`
* Download the archive for your operating system: `https://github.com/minishift/minishift/releases`
* Copy the contents of the directory to your preferred location.
* Add the minishift binary to your PATH environment variable.
* Set Minishift to Path : `export PATH="/home/raja/Documents/coding/kubernetes/openshift/minishift:$PATH"`
* Start the minishift : `minishift  start`
* Start : `minishift  start`
* Stop : `minishift  stop`


##### Option - 3
* `brew cask install minishift`
* `brew cask install --force minishift`
* Start the minishift : `minishift start`

##### Install Openshift-Client (OC)

###### Option - 1
* Download the archive for your operating system: `https://github.com/openshift/origin/releases/tag/v3.11.0`
* Copy the contents of the directory to your preferred location.
* Add the minishift binary to your PATH environment variable.
* Set OC to Path : `export PATH="/home/raja/Documents/coding/kubernetes/openshift/oc:$PATH"`

###### Option - 2
* Get OC env from minishift : `minishift oc-env` and set the path.
* By Default OC will connect to Minishift


* Access the web console on : `http://<minishift-ip>:8443/console`
* Acccess the CLI : `oc login -u developer -p developer`
* Get the User `Token` : `oc whomai -t`

* Access the Rest API : `curl -k https://192.168.42.168:8443/oapi/v1/projects -H "Authorization:Bearer <token>"`