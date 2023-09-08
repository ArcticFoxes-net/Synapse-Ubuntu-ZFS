# Synapse-Ubuntu-ZFS
Server configurations for Ubuntu 22.04 running Synapse

This configuration does not include some hardening configurations, as those are maintained [here](https://github.com/tommytran732/Linux-Setup-Scripts/blob/main/Ubuntu-22.04-Server.sh).

**Notes**:
- snap ufw blocks Docker by default. ArcticFoxes's Matrix server uses .deb ufw instead.
- A lot of these configuration files use ArcticFoxes's domain. If you are adopting this to your own system, make sure that you replace them.
- The Certbot-OCSP-Fetcher script can be found [here](https://github.com/GrapheneOS/infrastructure/blob/main/certbot-ocsp-fetcher)
- Systemd overrides for NGINX and SSHD services are based on [GrapheneOS's configurations](https://github.com/GrapheneOS/infrastructure/tree/main/systemd/system).
- Systemd override for Synapse are based on Arch Linux's [matrix-synapse](https://gitlab.archlinux.org/archlinux/packaging/packages/matrix-synapse/-/blob/main/override-hardened.conf?ref_type=heads) package.
- The repolists of PostgreSQL and Docker have been modified so that they read GPG keys from `/usr/share/keyring` by default. Make sure that when you follow upstream's documentation on adding their GPG keys, you adjust the location. For PostgreSQL's GPG key, run `curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /usr/share/keyrings/postgresql-debian-repo.gpg >/dev/null`
