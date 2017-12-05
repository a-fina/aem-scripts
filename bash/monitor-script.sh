#!/bin/bash

USER=

PID = jps -lv  > /home/$USER/ps.lpw.log.6
ps -eLo pid,lwp,nlwp,ruser,pcpu,stime,etime,wchan,args | grep PID > /home/$USER/ps.lpw.log.6
jstack -l 21707 >> /home/$USER/ps.lpw.log.6
top -H -b -n 1 >> /home/$USER/ps.lpw.log.6

printf "%x" PID -> threadID


