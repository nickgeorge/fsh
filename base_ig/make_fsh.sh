#!/bin/bash

set -eu

source gbash.sh || exit 1

DEFINE_bool user_x20 false
DEFINE_bool prod_x20 false

gbash::init_google "$@"
set -- "${GBASH_ARGV[@]}"

set -x

x20=""
if [[ "${FLAGS_prod_x20}" == 1 ]]
then
  x20="teams/g4c-spec/clinicaltools/us/prod/"
elif [[ "${FLAGS_user_x20}" == 1 ]]
then
  x20="teams/g4c-spec/clinicaltools/us/${USER}/"
fi

medical/records/fhir/tools/fsh/make_fsh.sh \
  --src "$(dirname "$0")" \
  --x20 "${x20}"
