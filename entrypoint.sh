#!/bin/bash

# notuscloud/burrow
# This script is the container's entrypoint

# Default ENV variables
# export BURROW_LOGS_DIR=${BURROW_LOGS_DIR:-/var/log/burrow}
export BURROW_CONFIG_PATH=${BURROW_CONFIG_PATH:-"/config/burrow.cfg"}

# Check if
if [[ ! -e ${BURROW_CONFIG_PATH} ]]
then
  cp /burrow/burrow.cfg.template ${BURROW_CONFIG_PATH}
fi

# Start burrow
/bin/burrow --config ${BURROW_CONFIG_PATH}
