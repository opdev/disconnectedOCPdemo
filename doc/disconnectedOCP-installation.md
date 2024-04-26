OpenShift clusters have a restricted environment in which the Nodes do not have access to the internet. 

### The version of openshift-install must match the openshift-release version used in the imageSetConfig.yaml file

1. Login to your bastion server
2. Run these commands
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
3. Modify install-config.yaml
- dfdfd
- dfdf
- dfdfd

4. Install OCP
   ```
   $ openshift-install create cluster --log-level debug
   ```
