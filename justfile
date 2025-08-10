set export := true
set quiet := true
set shell := ["bash","-cu"]

this_dir := justfile_directory()

_default:
   just --list

[doc("Install homelab helmchart")]
install:
  cd helm && \
  helm install homelab .

[doc("Upgrade homelab helmchart")]
upgrade:
  cd helm && \
  helm upgrade homelab .

[doc("Uninstall homelab helmchart")]
uninstall:
  helm uninstall homelab