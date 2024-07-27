#!/bin/bash
kubectl rollout restart deployment \
    ailyze-react-deployment \
    "$@"