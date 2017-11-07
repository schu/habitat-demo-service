pkg_name=demo-service
pkg_origin=schu
pkg_version=0.1.0
pkg_description="Habitat demo service"
pkg_maintainer="schu"
pkg_deps=("core/glibc")
pkg_build_deps=("core/go" "core/make")
pkg_bin_dirs=("/usr/bin")

do_build() {
  make
}

do_install() {
  install -m 0755 -D "demo-service" "$pkg_prefix/usr/bin/demo-service"
  install -m 0644 -D "message-default.txt" "$pkg_prefix/"
}
