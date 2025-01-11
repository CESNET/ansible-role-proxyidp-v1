#!/bin/bash

RESULT_SAML=$(/usr/lib/check_mk_agent/local/proxy_idp_auth_test_saml.sh)
SAML_RC=$?

RESULT_OIDC=$(/usr/lib/check_mk_agent/local/proxy_idp_auth_test_oidc.sh)
OIDC_RC=$?

if [[ ${SAML_RC} -eq 0 && ${OIDC_RC} -eq 0 ]]; then
  echo "OK"
  exit 0
else
  echo "NOK"
  exit 128
fi
