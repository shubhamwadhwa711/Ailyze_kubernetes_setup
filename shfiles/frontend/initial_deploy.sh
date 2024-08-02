#!/bin/bash

kubectl apply \
    -f ./frontend/ailyze_react.yaml \
    -f ./frontend/ailyze_companion.yaml \
    -f ./volumes/ailyze_companion_volume.yaml \
    -f ./ingress/ailyze_companion_ingress.yaml 
    "$@";