#!/bin/bash
# display all HTTP methods the server will accept using curl.
curl -Is "$1" | grep "Allow:" | cut -d ":" -f 2 | cut -c 2- | rev | cut -c 2- | rev
