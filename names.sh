#Author: Pradeep Ravichandran
#! /bin/bash
NAME="Pradeep Prady Ravichandran"
namearr=($NAME)
if [ -z "${namearr[2]}" ]; then
        echo "First Name:"${namearr[0]}
        echo "Last Name:"${namearr[1]}
else
        echo "First Name:"${namearr[0]}
        echo "Middle Name:"${namearr[1]}
        echo "Last Name:"${namearr[2]}
fi
