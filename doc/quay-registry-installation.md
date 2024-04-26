
### Mirror Registry Installation and Image Mirroring


1. Login to the mirror server
2. Follow [this](https://www.redhat.com/en/blog/red-hat-openshift-disconnected-installations) guide to install and mirror images on private image repository

   For the installation of the mirror registry, I executed the following command:
   ```
   ./mirror-registry install --quayRoot /root/ocpmirror
   ```

   [Here](https://github.com/opdev/disconnectedOCPdemo/blob/main/config/imageSetConfig.yaml) is an example of the imagesetconfig.yaml file

   Or generate imageSetConfig.yaml with:
   ```
   $ oc mirror init --registry example.com/mirror/oc-mirror-metadata > imageset-config.yaml
   ```

   And, this is the command I used for the mirroring process:

   ```
   $ nohup oc mirror --config=imagesetconfig.yaml docker://ip-10-0-0-158.us-east-2.compute.internal:8443 --continue-on-error &
   ```
#### Note: 
Stop before reaching the "Agent Based Installation" section

#### References:

[Mirroring](https://docs.openshift.com/container-platform/4.15/installing/disconnected_install/installing-mirroring-disconnected.html) an image set to a mirror registry