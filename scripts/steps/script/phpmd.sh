#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

./vendor/phpmd/phpmd/src/bin/phpmd $MODULE_DEPLOY_PATH text $(pwd)/dev/tests/static/testsuite/Magento/Test/Php/_files/phpmd/ruleset.xml
