#!/bin/sh

cat <<EOF
_443._tcp.matrix.arcticfoxes.net. IN TLSA 3 1 1 $(openssl x509 -in /etc/letsencrypt/live/matrix.arcticfoxes.net/cert.pem -noout -pubkey |
        openssl pkey -pubin -outform DER |
        openssl dgst -sha256 -binary |
        hexdump -ve '/1 "%02x"')
EOF