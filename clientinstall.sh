#!/bin/bash

yum -y install openldap-clients nss-pam-ldapd
read -p 'Enter LDAP Server IP Address: ' ip
authconfig --enableldap --enableldapauth --ldapserver=$ip --ldapbasedn="dc=ravildap,dc=com" --enablemkhomedir --update
