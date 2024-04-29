## Using the Operator Lifecycle Manager (OLM) to Install Operators on Restricted Networks

### 1. Accessing Images for Operators from Private Registries

For detailed steps on the procedures listed below, consult the [official OpenShift documentation](https://docs.openshift.com/container-platform/4.15/operators/admin/olm-managing-custom-catalogs.html#olm-accessing-images-private-registries_olm-managing-custom-catalogs):

  1. Create a secret for each required private registry.
  2. Create or update an existing CatalogSource object** to reference one or more secrets.
  3. Add authentication details** to the global cluster pull secret in the openshift-config namespace.

### 2. Managing access to repositories
[Create](https://access.redhat.com/documentation/en-us/red_hat_quay/3.8/html/use_red_hat_quay/use-quay-manage-repo) a robot account to a new team
 

### 3. Installing Operators

[See example](https://github.com/rocrisp/dell)
