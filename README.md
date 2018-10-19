Node Web App.
========
NodeJS simple web server application.


Prerequisites:

* Docker Engine (you have already install Docker)
* git
* Create password file in root directory full path is /root/.dockpasswd, OR you can create password file anywhere 
and edit below line in script.sh file. 

`cat /root/.dockpasswd | docker login --username husnerabbi --password-stdin`

and replace husnerabbi with own your docker hub account.

## Install
```bash
Clone below mentioned repository on your Docker host, cd into taskdev directory.
git clone https://github.com/husnerabbi/taskdev.git
cd taskdev
chmod u+x script.sh 
type ./script.sh in bash 
and hit Enter.
```

## Test App:
Now you can access application * Url: http://localhost:9000
