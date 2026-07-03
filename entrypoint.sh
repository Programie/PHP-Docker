#! /bin/bash

set -e

for file in /docker-entrypoint.d/*; do
    if [[ -f "${file}" ]] && [[ -x "${file}" ]]; then
        echo "Executing ${file}"
        "${file}"
    fi
done

exec "$@"
