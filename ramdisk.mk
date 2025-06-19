# SPDX-License-Identifier: GPL-2.0

modules_cpio_gz: dir-pkg
	@echo Building $(BUILD)modules.cpio.gz
	@cd $(BUILD)tar-install/; find lib | cpio -o -H newc -R +0:+0 | gzip -c > $(BUILD)modules.cpio.gz
	@cd -

ramdisk: modules_cpio_gz
	@echo Appending modules.cpio.gz to final ramdisk
	@cat $(INITRD) $(BUILD)modules.cpio.gz \
		> $(BUILD)ramdisk.cpio.gz;
