#!/bin/bash

set -eu

source gbash.sh || exit 1

DEFINE_string x20 ""
DEFINE_bool prod_x20 false
[[ ${FLAGS_prod_x20} ]] && \
  x20="teams/g4c-spec/carestudio/prod/" || \
  x20="${FLAGS_x20}"

gbash::init_google "$@"
set -- "${GBASH_ARGV[@]}"

set -x

medical/records/fhir/tools/fsh/make_fsh.sh \
  --src "$(dirname "$0")" \
  --x20 "${x20}"
