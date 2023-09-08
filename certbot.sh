#!/bin/bash

certbot certonly -d matrix.arcticfoxes.net -d element.arcticfoxes.net -d invite.arcticfoxes.net --key-type ecdsa --reuse-key --must-staple --elliptic-curve secp384r1 --deploy-hook "certbot-ocsp-fetcher -o /var/cache/certbot-ocsp-fetcher"
