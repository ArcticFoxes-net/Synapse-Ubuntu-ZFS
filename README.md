# Synapse-Ubuntu-ZFS
Server configurations for Ubuntu 22.04 running Synapse

This configuration does not include a lot of hardening configurations, as most of those are maintained [here](https://github.com/tommytran732/Linux-Setup-Scripts/blob/main/Ubuntu-22.04-Server.sh).

**Note**:
- snap ufw blocks Docker by default. ArcticFoxes's Matrix server uses .deb ufw instead.
- A lot of these configuration files use ArcticFoxes's domain. If you are adopting this to your own system, make sure that you replace them.
- The Certbot-OCSP-Fetcher script can be found [here](https://github.com/GrapheneOS/infrastructure/blob/main/certbot-ocsp-fetcher)
- The repolists of PostgreSQL and Docker have been modified so that they read GPG keys from `/usr/share/keyring` by default. Make sure that when you follow upstream's documentation on adding their GPG keys, you adjust the location. For PostgreSQL's GPG key, run `curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /usr/share/keyrings/postgresql-debian-repo.gpg >/dev/null`
