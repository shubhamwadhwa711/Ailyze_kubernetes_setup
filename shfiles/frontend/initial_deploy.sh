#!/bin/bash

kubctl apply \
    -f .frontend/ailyze_react.yaml
    "$@";