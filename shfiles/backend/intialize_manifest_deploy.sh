#!/bin/bash
kubectl apply \
    -f ./secrets/ailyze_secrets.yaml \
    -f ./secrets/ailyze_db_secrets.yaml \
    -f ./secrets/acr_secret.yaml \
    -f ./volumes/ailyze_celery_volume.yaml \
    -f ./deployments/ailyze_rabbitmq.yaml \
    -f ./deployments/ailyze_django.yaml \
    -f ./deployments/ailyze_django_bot.yaml \
    -f ./deployments/ailyze_redis.yaml \
    -f ./deployments/ailyze_flower.yaml \
    -f ./deployments/ailyze_celery_bot.yaml \
    -f ./deployments/ailyze_celery_theme.yaml \
    -f ./deployments/ailyze_celery_frequency.yaml \
    -f ./deployments/ailyze_celery_compare.yaml \
    -f ./ingress/ailyze_django_ingress.yaml \
    -f ./ingress/ailyze_flower_ingress.yaml \
    "$@";