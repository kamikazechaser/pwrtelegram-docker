FROM ubuntu:14.04

################################
# Dockerfile For PWRTELEGRAM API
# @kamikazechaer
################################

################################
# BACKEND INSTALLATION
################################

# Run system update
RUN apt-get update
RUN apt-get install wget nano lsb-release apt-utils systemd-services -y

# Get file from repo

RUN wget -O install.sh https://raw.githubusercontent.com/pwrtelegram/pwrtelegram-backend/master/install.sh

# Switch to root
USER root

# Set permissions
RUN chmod +x install.sh

# Install

RUN bash -e install.sh docker

###############################
# RUN API
###############################

###############################
#
# Set any environmental variables
#
# Change dir if needed
#
# Expose port if needed
#
# Run any other post install command
#
################################

# Expose port
EXPOSE 80
EXPOSE 443






