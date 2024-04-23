OpenShift clusters have a restricted environment in which the Nodes do not have access to the internet. 

#### make sure the openshift-install version is equivalent to the mirror-registry openshift-release version

The following commands are done from the bastion host
```
$ curl -L https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.15.8/openshift-install-linux.tar.gz -o ./openshift-install-linux.tar.gz
$ tar -xvf openshift-install-linux.tar.gz
$ ./openshift-install version
$ mv openshift-install bin/
$ openshift-install version
$ mkdir disconnected-ocp
$ cd disconnected-ocp
$ copy config/install-config.yaml disconnected-ocp/.
```
#### Modify install-config.yaml 

```
$ openshift-install create cluster --log-level debug
```