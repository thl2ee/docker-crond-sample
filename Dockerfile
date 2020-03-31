FROM node:8-alpine

# Replace the crontabs config
COPY root /var/spool/cron/crontabs/root

# set working directory
WORKDIR /bin

# copy sh file to run by crond
COPY run.sh run.sh

# allow permission for the execution
RUN chmod +x run.sh

# run crond
CMD crond -l 2 -f
