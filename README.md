# Disconnected OpenShift cluster installation guide

This guide explains how to deploy an OpenShift Container Platform (OCP) in a disconnected environment. It utilizes a bastion server for secure communication and a private Quay repository hosted on a mirror server to manage container images.

## Challenges

The challenge is the platform can't fetch the necessary images from RedHat registry, hence we provide a private/mirror registry in the same private network as the OCP restricted cluster

## Overview

### Components Overview

- **Quay Repository**: A private repository that manages and stores your container images.
- **Bastion Server**: A server that facilitates secure interaction between your local network and the disconnected OCP environment.
- **Mirror Server**: Hosts the Quay repository and is part of the infrastructure that mirrors external resources needed for OpenShift installation.
- **VPC Setup**: Both the mirror and bastion servers are located within the same Virtual Private Cloud (VPC), ensuring they can communicate securely.
- **External Access**: The mirror server is accessible externally—this can be configured based on security requirements.

### Deployment Steps

Follow these steps to set up your disconnected OpenShift Cluster:

1. **Set Up the Bastion Server**:
   - The bastion server functions as a secure gateway linking your local network to the OpenShift cluster. Detailed instructions can be found [here](https://github.com/opdev/disconnectedOCPdemo/blob/main/doc/bastion-server-installation.md).

2. **Set Up the Mirror Server:**
- The mirror server hosts the Quay repository and mirrors essential resources, providing them to the OpenShift environment. Detailed instructions can be found [here](https://github.com/opdev/disconnectedOCPdemo/blob/main/doc/mirror-server-installation.md).

3. **Set Up the Quay Repository**:
   - Configure the private Quay repository on the mirror server to manage OpenShift images.Detailed instructions can be found [here](https://github.com/opdev/disconnectedOCPdemo/blob/main/doc/quay-registry-installation.md).

4. **Install OpenShift**:
   - From the bastion server, install the OpenShift Container Platform using the resources available from your mirror server.Detailed instructions can be found [here](https://github.com/opdev/disconnectedOCPdemo/blob/main/doc/disconnectedOCP-installation.md).

5. **Install Operators**:
   - Install OpenShift operators using the images managed in your Quay repository.Detailed instructions can be found [here](https://github.com/opdev/disconnectedOCPdemo/blob/main/doc/operator-installation.md).

## Conclusion

Each component plays a critical role in establishing a robust and secure OCP environment in disconnected setups. Proper configuration and integration of these components are essential for a successful deployment.


## References:

Installing Operators in a Disconnected OpenShift Cluster:

https://medium.com/@abhichandra1998/installing-operators-in-a-disconnected-openshift-cluster-129af21cd904

Better securing the future: Navigating Red Hat OpenShift disconnected installations with the agent-based installer:

https://www.redhat.com/en/blog/red-hat-openshift-disconnected-installations

Red Hat-provided Operator catalogs

https://docs.openshift.com/container-platform/4.15/operators/understanding/olm-rh-catalogs.html


