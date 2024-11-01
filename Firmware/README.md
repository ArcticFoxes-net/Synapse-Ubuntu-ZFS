# Firmware Configuration

Hetzner provided an ASUS W680/MB DC motherboard running firmware version 2.21.1278. The following settings were changed from the 'optimized' defaults:

![Page 1 of settings changes](settings1.png)
![Page 2 of settings changes](settings2.png)

**Note:** As of 2024 November 1, Hyperthreading is now enabled due to drastically increased CPU usage by Synapse causing severe performance degradation. We apologize for the resultant insecurity.

## Boot Order

![High-level boot order](boot1.png)

With the help of efibootmgr, the boot order was configured for fault tolerance:

![UEFI hard drive boot order](boot2.png)
