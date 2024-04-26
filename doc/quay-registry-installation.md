
### Mirror Registry Installation and Image Mirroring
Follow [this](https://www.redhat.com/en/blog/red-hat-openshift-disconnected-installations) to install and mirror images on private image repository

1. Login to the mirror server

2. Install the Mirror Registry.
   
   I used this command to install the mirror registry.
   ```
   ./mirror-registry install --quayRoot /root/ocpmirror
   ```
3. Mirroring images.
   
   
   I used [this](https://github.com/opdev/disconnectedOCPdemo/blob/main/config/imageSetConfig.yaml) of imagesetconfig.yaml file as a input to ```oc mirror```

   And, this is my mirror images command:

   ```
   $ nohup oc mirror --config=imagesetconfig.yaml docker://ip-10-0-0-158.us-east-2.compute.internal:8443 --continue-on-error &
   ```
#### Note: 
Stop before reaching the "Agent Based Installation" section