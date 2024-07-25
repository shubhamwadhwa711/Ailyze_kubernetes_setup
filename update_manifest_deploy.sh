#!/bin/bash
kubectl rollout restart  \
    -f ./deployment.apps/ailyze-django-deployment \
    -f ./deployment.apps/ailyze-celery-theme-deploymentt \
    -f ./deployment.apps/ailyze-celery-frequency-deployment \
    -f ./deployment.apps/ailyze-celery-compare-deployment \
    -f ./deployment.apps/ailyze-celery-bot-deployment \
    "$@";