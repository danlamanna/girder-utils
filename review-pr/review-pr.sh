#!/bin/bash
set -e

readonly GIRDER_PR="$1"
shift

ansible-playbook -e girder_pr="$GIRDER_PR" -i localhost, -c local ~/etc/review-pr/site.yml
