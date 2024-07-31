#!/bin/bash

kubectl apply \
    -f ./frontend/ailyze_react.yaml \
    -f ./frontend/ailyze_companion.yaml
    "$@";