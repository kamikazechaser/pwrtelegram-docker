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

# Get file from repo

RUN wget -O install.sh https://raw.githubusercontent.com/pwrtelegram/pwrtelegram-backend/master/install.sh

# Switch to root
USER root

# Set permissions
RUN chmod +x install.sh

# Install

RUN bash -e install.sh

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
EXPOSE 8080

# Start the API

# Just an example 
CMD ["/path/to/script/api.sh"]





