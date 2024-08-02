#!/bin/bash
kubectl rollout restart deployment  ailyze-companion-deployment --namespace uppy 
kubectl rollout restart deployment ailyze-react-deployment 
"$@"