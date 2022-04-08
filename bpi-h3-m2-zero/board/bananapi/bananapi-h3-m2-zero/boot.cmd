setenv bootargs console=ttyS0,115200 earlyprintk clk_ignore_unused root=/dev/mmcblk0p2 rootwait

mmc dev 0
fatload mmc 0 $kernel_addr_r uImage
fatload mmc 0 $fdt_addr_r sun8i-h3-plus-bananapi-m2-zero.dtb

bootm $kernel_addr_r - $fdt_addr_r