package=fontconfig
$(package)_version=2.13.1
$(package)_download_path=https://provgn.com
$(package)_file_name=$(package)-$($(package)_version).tar.bz2
$(package)_sha256_hash=f655dd2a986d7aa97e052261b36aa67b0a64989496361eca8d604e6414006741
$(package)_dependencies=freetype expat

define $(package)_set_vars
  $(package)_config_opts=--disable-docs --disable-static
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
