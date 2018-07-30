#!/bin/sh
PROJECT_HOME="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $PROJECT_HOME

sudo cat <<EOF > $PROJECT_HOME/.env
PIPENV_VENV_IN_PROJECT=True
PROJECT_HOME=$PROJECT_HOME
AWS_PROFILE=mach
DONE_ENV=dev
DONE_SRC=prd
EOF
