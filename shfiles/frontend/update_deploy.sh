#!/bin/bash
kubectl rollout restart deployment \
    ailyze-react-deployment \
    ailyze-companion-deployment -n uppy \
    "$@"