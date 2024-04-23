## Using the Operator Lifecycle Manager (OLM) to Install Operators on Restricted Networks

### 1. Accessing Images for Operators from Private Registries

For step-by-step guidance on accessing and managing operator images from private registries within restricted network environments, please consult the [official OpenShift documentation](https://docs.openshift.com/container-platform/4.15/operators/admin/olm-managing-custom-catalogs.html#olm-accessing-images-private-registries_olm-managing-custom-catalogs):

For detailed steps on the procedures listed below, consult the [official OpenShift documentation](https://docs.openshift.com/container-platform/4.15/operators/admin/olm-managing-custom-catalogs.html#olm-accessing-images-private-registries_olm-managing-custom-catalogs):

  1. Create a secret for each required private registry.
  2. Create or update an existing CatalogSource object** to reference one or more secrets.
  3. Add authentication details** to the global cluster pull secret in the openshift-config namespace.

### 2. Installing Operators

For detailed documentation on installing operators, please visit [our official GitHub repository](https://github.com/rocrisp/dell).
