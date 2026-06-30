#! /bin/bash

sshinto(){
cmd=(arcOSBaseKit & arcOSQQnx & $cmd)
runssh(){ 
ssh -i “${SSH_KEY}” -p “${PORT}” -o StrictHostKeyChecking=accept-new “root@$QQLOCAL” “$*”
}

runssh “${cmd}” &
}


