	8723B_SRC_DIR = 8723B

	SRC_DIR	:= ./bluetooth_usb_driver
	MDL_DIR	:= /lib/modules/$(shell uname -r)
	DRV_DIR	:= $(MDL_DIR)/kernel/drivers/bluetooth
	

##########################################
install:
	make -C $(8723B_SRC_DIR) -s
	make -C $(SRC_DIR) -s
##########################################

uninstall:
	make -C $(8723B_SRC_DIR) clean -s
	make -C $(SRC_DIR) clean -s

##########################################
