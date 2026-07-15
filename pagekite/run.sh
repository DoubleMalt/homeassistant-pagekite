#!/usr/bin/with-contenv bashio
# ==============================================================================
# Start the Pagekite reverse tunnel
# ==============================================================================

FRONTEND=$(bashio::config 'frontend')
KITENAME=$(bashio::config 'kitename')
SECRET=$(bashio::config 'secret')
HA_PORT=$(bashio::config 'ha_port')
LE_PORT=$(bashio::config 'le_port')
ENABLE_HTTP=$(bashio::config 'enable_http')
ENABLE_HTTPS=$(bashio::config 'enable_https')

if [[ -z "${FRONTEND}" || -z "${KITENAME}" || -z "${SECRET}" ]]; then
  bashio::log.error "frontend, kitename, and secret are required"
  exit 1
fi

if [[ "${ENABLE_HTTP}" != "true" && "${ENABLE_HTTPS}" != "true" ]]; then
  bashio::log.error "At least one of enable_http or enable_https must be enabled"
  exit 1
fi

ARGS=(
  "--frontend=${FRONTEND}"
  "--logfile=stdio"
)

if [[ "${ENABLE_HTTP}" == "true" ]]; then
  ARGS+=("--service_on=http:${KITENAME}:localhost:${LE_PORT}:${SECRET}")
fi

if [[ "${ENABLE_HTTPS}" == "true" ]]; then
  ARGS+=("--service_on=https:${KITENAME}:localhost:${HA_PORT}:${SECRET}")
fi

bashio::log.info "Starting Pagekite: ${KITENAME} -> ${FRONTEND}"

exec /usr/local/bin/pagekite.py "${ARGS[@]}"
