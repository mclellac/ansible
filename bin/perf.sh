#!/bin/bash
printf "--= UPTIME AND LOAD AVERAGE =--"
uptime
printf ""

printf "--= TOP 10 PROCESSES BY CPU (avg %cpu, total cpu d:h:m, running since, pid, command) =--"
ps axo '%cpu,cputime,etime,pid,comm' | sort -nr | head
printf ""

printf "--= TOP 10 PROCESSES BY MEMORY (current %mem, pid, command) =--"
ps axo '%mem,pid,comm' | sort -nr | head
printf ""

printf "--= IOSTAT (cumulative usage, then 5-second samples) =--"
iostat -x 5 3
printf ""

printf "--= LISTENING PROCESSES =--"
netstat -tlpn | sort -nk4
printf ""

printf "--= NETWORK CONNECTIONS =--"
netstat -tpn | sort -nk4
printf ""
