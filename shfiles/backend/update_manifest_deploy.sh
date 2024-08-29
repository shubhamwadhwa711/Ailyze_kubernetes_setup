#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Function to print messages
print_message() {
    echo "===== $1 ====="
}

# Updating Deployments
print_message "Updating Deployments"
kubectl rollout restart deployment \
    ailyze-django-deployment \
    ailyze-django-bot-deployment \
    ailyze-celery-theme-deployment \
    ailyze-celery-frequency-deployment \
    ailyze-celery-compare-deployment \
    ailyze-celery-bot-deployment \
    ailyze-flower-deployment \
    ailyze-redis-deployment \
    "$@"

# Updating Statefulsets
print_message "Updating Statefulsets"
kubectl rollout restart statefulset \
    ailyze-rabbitmq-statefulset

print_message "Rollout restart completed"