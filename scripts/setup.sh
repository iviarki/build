#!/bin/sh
echo $PROJECT_HOME
echo $PROJECT_TEST

PROJECT_HOME="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $PROJECT_HOME

mkdir -p $PROJECT_HOME
sudo cat <<EOF > {$PROJECT_HOME}/.env
PIPENV_VENV_IN_PROJECT=True
PROJECT_HOME=$PROJECT_HOME
AWS_PROFILE=mach
DONE_ENV=dev
DONE_SRC=prd
EOF

cat $PROJECT_HOME/.env
cat $AWS_PROFILE

echo $bob
