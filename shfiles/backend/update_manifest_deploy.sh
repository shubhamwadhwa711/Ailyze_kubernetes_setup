#!/bin/bash
kubectl rollout restart deployment \
    ailyze-django-deployment \
    ailyze-django-bot-deployment \
    ailyze-celery-theme-deployment \
    ailyze-celery-frequency-deployment \
    ailyze-celery-compare-deployment \
    ailyze-celery-bot-deployment \
    "$@"