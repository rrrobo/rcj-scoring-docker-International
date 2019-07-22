# RoboCup Junior
### Helper file for rescue scoring system environment construction
This is a helper file used to build the RCJ Scoring System with a Docker image.

## Supported environment
Unix (Ubuntu / CentOS etc...)

For Windows, please visit [rcj-scoring-docker-helper-windows-international](https://github.com/rrrobo/rcj-scoring-docker-helper-windows-international).

## Tested environment
* Ubuntu 16.04 LTS
* Ubuntu 18.04 LTS
* Synology DiskStation DSM 6.2 (Official Docker Package Installed)
* macOS 10.14 Mojave

## Setup Docker
The setup method differs depending on each OS.
Check the contents of the page below and set up Docker ready for use.
Or, by entering the following command, Docker is set up in one shot.
`sudo curl -sSL https://get.docker.com/ | CHANNEL=stable sh`

[https://docs.docker.com/install/](https://docs.docker.com/install/)



## Download and run setup helper
#### **If git is not installed on your system, please install it first.

#### Download the setup helper
`git clone https://github.com/rrrobo/rcj-scoring-docker-international`

#### Start setup
`cd rcj-scoring-docker`
`sudo chmod +x *.sh`
`./setup.sh`
During execution, you may be asked to enter a password.

When complete, access http://localhost:3000 (http://IP address:3000 when accessing from another PC) and the system is already started and ready to use.

## Stop the system
Execute the following command in the setup helper directory (rcj-scoring-docker).
`./stop.sh`
During execution, you may be asked to enter a password.

## Resume the system
Execute the following command in the setup helper directory (rcj-scoring-docker).
`./start.sh`
During execution, you may be asked to enter a password.

## Restart the system
Execute the following command in the setup helper directory (rcj-scoring-docker).
`./restart.sh`
During execution, you may be asked to enter a password.

## Update the system
Execute the following command in the setup helper directory (rcj-scoring-docker).
When executed, the latest image is downloaded from Docker Hub and the container is replaced.
The data of the created tournaments and competitions will be retained.
`./update.sh`
During execution, you may be asked to enter a password.
Container replacement is performed even if there is no update.

## Change password of admin account
If you want to change the admin account password, edit the file `process.env` in the setup helper directory (rcj-scoring-docker) with a suitable editor.

```
# db vars see more at http://mongoosejs.com/docs/connections.html
DB_CONNECT_STR=mongodb://localhost/rcj-scoring

# web vars
WEB_HOSTPORT=3000

# log vars ERROR/INFO/DEBUG
MAIN_LOG_LVL=DEBUG

# Account hardcoded
user=admin
password=admin

# Default Account Setting
dUsername=admin
dPassword=adminpass       #CHANGE HERE
dAdmin=true
dSDAdmin=true
```

The change is applied by executing the following command in the setup helper directory (rcj-scoring-docker).
`./restart.sh`
During execution, you may be asked to enter a password.