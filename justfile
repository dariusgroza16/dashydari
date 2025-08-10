set export := true
set quiet := true
set shell := ["bash","-cu"]

this_dir := justfile_directory()

_default:
   just --list

[doc("Install homelab helmchart in staging")]
install-staging:
  cd helm && \
  helm install -f values-staging.yaml homelab .

[doc("Install homelab helmchart in prod")]
install-prod:
  cd helm && \
  helm install -f values-prod.yaml homelab .  

[doc("Upgrade homelab helmchart")]
upgrade:
  cd helm && \
  helm upgrade homelab .

[doc("Uninstall homelab helmchart")]
uninstall:
  helm uninstall homelab