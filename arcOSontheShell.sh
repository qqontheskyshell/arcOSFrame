#! /bin/bash

sshinto(){
cmd=(.arcOSBaseKit & arcOSLoop *)
runssh(){ 
ssh -i “${SSH_KEY}” -p “${PORT}” -o StrictHostKeyChecking=accept-new “root@$QQLOCAL” “$*”
}

runssh “${cmd}” &
}


