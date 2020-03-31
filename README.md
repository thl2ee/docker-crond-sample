# how to run
1. Build docker image.

`docker build -t docker-crond .`

2. Run with -it to see the log of crond and have to wait 1 min (as I set default to every 1 min).

`docker run -it docker-crond:latest`


3. Open another terminal to get into console container:

`docker exec -it {containerId} /bin/sh`


4. After u get in container, you can see if crond is trigger `run.sh` file, in `/var/log/audit.log`



# scheduling cron:
https://linuxize.com/post/scheduling-cron-jobs-with-crontab/
Note: so, 3 days will be "* 72 * * *"



# crond help:
/ # crond --help
BusyBox v1.24.2 (2016-06-22 17:51:28 GMT) multi-call binary.

Usage: crond -fbS -l N -d N -L LOGFILE -c DIR

    -f  Foreground
    -b  Background (default)
    -S  Log to syslog (default)
    -l N    Set log level. Most verbose:0, default:8
    -d N    Set log level, log to stderr
    -L FILE Log to FILE
    -c DIR  Cron dir. Default:/var/spool/cron/crontabs