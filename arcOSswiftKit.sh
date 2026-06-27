#! /bin/bash

arcOSrunSwift(){
     swiftScript="$1" 
     bashScript="$2"
     swift - <<EOF
     "$swiftScript" &
     "$bashScript" &
     arcOSBaseKit &
     EOF
 }