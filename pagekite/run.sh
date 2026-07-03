#!/usr/bin/env bashio

FRONTEND=$(bashio::config 'frontend')
KITENAME=$(bashio::config 'kitename')
SECRET=$(bashio::config 'secret')
HA_PORT=$(bashio::config 'ha_port')
LE_PORT=$(bashio::config 'le_port')
ENABLE_HTTP=$(bashio::config 'enable_http')
ENABLE_HTTPS=$(bashio::config 'enable_https')

ARGS=(
  "--frontend=${FRONTEND}"
  "--daemonize=/var/run/pagekite.pid"
  "--log=/tmp/pagekite.log"
  "--logfile=/tmp/pagekite.log"
)

if [[ "${ENABLE_HTTP}" == "true" ]]; then
  ARGS+=("--service_on=http:localhost:${LE_PORT}:${KITENAME}:${SECRET}")
fi

if [[ "${ENABLE_HTTPS}" == "true" ]]; then
  ARGS+=("--service_on=https:localhost:${HA_PORT}:${KITENAME}:${SECRET}")
fi

bashio::log.info "Starting Pagekite: ${KITENAME} -> ${FRONTEND}"

exec pagekite.py "${ARGS[@]}"