#!/bin/bash

length=$1

password=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+{}|:<>?=' < /dev/urandom | head -c $length)
echo "$password"
