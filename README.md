# Guide to Setting Up an Offline OpenShift Cluster

This guide explains how to deploy an OpenShift Container Platform (OCP) in a disconnected environment. It utilizes a bastion host for secure communication and a private Quay repository to manage container images.

## Challenges

The challenge is the platform can't fetch the necessary images from RedHat registry, hence we provide a private/mirror registry in the same private network as the OCP restricted cluster

## Overview

### Components Overview

- **Quay Repository**: A private repository that manages and stores your container images.
- **Bastion Host**: A server that facilitates secure interaction between your local network and the disconnected OCP environment.
- **Mirror Server**: Hosts the Quay repository and is part of the infrastructure that mirrors external resources needed for OpenShift installation.
- **VPC Setup**: Both the mirror and bastion servers are located within the same Virtual Private Cloud (VPC), ensuring they can communicate securely.
- **External Access**: The mirror server is accessible externally—this can be configured based on security requirements.

### Deployment Steps

Follow these steps to set up your offline OpenShift Cluster:

1. **Set Up the Bastion Server**:
   - This server acts as a gateway between your local network and the OpenShift cluster, ensuring secure connectivity.

2. **Set Up the Mirror Server**:
   - This server hosts the Quay repository and mirrors needed resources, making them available to the OpenShift environment.

3. **Set Up the Quay Repository**:
   - Configure the private Quay repository on the mirror server to manage Docker and OpenShift images.

4. **Install OpenShift**:
   - Deploy the OpenShift Container Platform using the resources available from your mirror server.

5. **Install Operators**:
   - Install necessary OpenShift operators using the images managed in your Quay repository. Operators help manage various functions within your OpenShift environment.

## Conclusion

Each component plays a critical role in establishing a robust and secure OCP environment in disconnected setups. Proper configuration and integration of these components are essential for a successful deployment.


## Ref:
Installing Operators in a Disconnected OpenShift Cluster:

https://medium.com/@abhichandra1998/installing-operators-in-a-disconnected-openshift-cluster-129af21cd904

Better securing the future: Navigating Red Hat OpenShift disconnected installations with the agent-based installer:

https://www.redhat.com/en/blog/red-hat-openshift-disconnected-installations


