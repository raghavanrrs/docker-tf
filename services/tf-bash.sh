#!/bin/bash

echo "============================================"
if [ -z "${AWS_SESSION_TOKEN}" ]; then
  echo "[WRN] There is no active AWS session."
else
  echo "AWS ACCOUNT ALIAS: $(aws iam list-account-aliases | jq -r .AccountAliases[])"
  echo "LOGGED IN AS: $(aws iam get-user | jq -r .User.UserName)"
  echo "MFA EXPIRES AT: ${AWS_MFA_EXPIRY}"
fi
echo "============================================"

echo "CWD: $(pwd)"
echo "CWD CONTENT:"
ls -al

/bin/bash