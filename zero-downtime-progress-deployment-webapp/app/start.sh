#!/bin/sh

# Default values (for local testing)
export WEBSITE_SLOT_NAME=${WEBSITE_SLOT_NAME:-local}
export WEBSITE_HOSTNAME=${WEBSITE_HOSTNAME:-localhost}
export APP_VERSION=${APP_VERSION:-v1}

# Replace environment variables into HTML
envsubst '$WEBSITE_SLOT_NAME $WEBSITE_HOSTNAME $APP_VERSION' \
    < /usr/share/nginx/html/index.template.html \
    > /usr/share/nginx/html/index.html

# Start nginx
nginx -g "daemon off;"