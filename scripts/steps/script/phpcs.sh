#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

./vendor/squizlabs/php_codesniffer/bin/phpcs $MODULE_DEPLOY_PATH --standard=PSR2
