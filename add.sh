#!/bin/sh

curl-unix-socket -H "Content-Type:application/json" -v -X POST -d '{
"AttachStdin":false,
"AttachStdout":false,
"AttachStderr":false,
"OpenStdin":false,
"StdinOnce":false,
"Env":null,
"Tty":false,
"Cmd":[
    "/usr/sbin/sshd", "-D"
],
"Image":"ubuntu_sshd",
"Volumes":{
"/tmp": {}
},
"WorkingDir":"/home",
"NetworkDisabled": false,
"ExposedPorts":{
    "22/tcp": {}
},
"PortBindings": { "22/tcp": [{ "HostPort": "11022" }] },
"RestartPolicy": { "Name": "always" }
}' unix:///var/run/docker.sock:/v1.6/containers/create?name=batman
