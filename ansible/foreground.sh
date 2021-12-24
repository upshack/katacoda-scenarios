!#/bin/bash

n=1
GREEN='\033[0;32m'
NC='\033[0m' 

while [ ! -f /root/post-run.log.done ] ;
do
      if test "$n" = "1"
      then
      clear
            n=$(( n+1 ))	 
      else
      printf "."
      fi
      sleep 2
done
clear
echo -e "${GREEN}Senaryo hazır${NC}"
