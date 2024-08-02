#!/bin/bash
kubectl rollout restart deployment \
    ailyze-companion-deployment \--namespace uppy \
    ailyze-react-deployment \
    
    "$@"