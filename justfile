set export := true
set quiet := true
set shell := ["bash","-cu"]

this_dir := justfile_directory()

_default:
   just --list

[doc("Install DashyDari helmchart")]
install:
  cd helm && \
  helm install dashydari .

[doc("Uninstall DashyDari helmchart")]
uninstall:
  helm uninstall dashydari