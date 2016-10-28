# LibertyPortletConfiguration
Configuration to run WebSphere Liberty with portlets.  Also deploys a test portlet to verify that your configuration for running portlets is correct.

## Quick Start
Place files under usr/servers/{serverName} and run bin/server start

Navigate to <http://localhost:9080/.SampleLibertyPortlet/SampleLibertyPortlet>

## Initial setup
### Install WebSphere Liberty
Navigate to <https://developer.ibm.com/wasdev/downloads/liberty-profile-using-non-eclipse-environments/> and download the zip archive.
Extract the archive to any location under your control. To avoid windows filepath length issues make that folder as near root as possible.

### Create Server
Navigate to the extracted Liberty installation and run the following command to create a server.
```sh
bin/server create {serverName ex 'defaultServer'}
```
## Usage
### Configure Existing Server
Place files into usr/servers/{serverName}

### Start server
```sh
bin/server start
```
View test servlet at

<http://localhost:9080/.SampleLibertyPortlet/SampleLibertyPortlet>

### Admin Service
<https://localhost:9443/adminCenter> 

username:admin 

password:adminpwd

## Issues
If you see exceptions about resolving portletcontainer in the logs under usr/servers/{serverName}/logs you may need to run the following commands. This should happen automatically.
```sh
bin/installUtility install portlet-2.1
bin/installUtility install portletServing-2.1
```

## References
Document that helped me set this up <https://www.ibm.com/developerworks/community/blogs/7e2e8015-bf72-43b6-bacd-36565b67febc/entry/Using_WebSphere_Application_Server_for_Liberty_profile_to_deploy_and_run_Portlets?lang=en>
