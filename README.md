# Recocery Device Tree for Lenovo Tab P11 Pro Gen 2

The Lenovo Tab P11 Pro Gen 2 (codenamed _"TB132FU"_) is an mid-level tablet from Lenovo.

It was announced and released in 2023.

## Device specifications

| Feature                        | Specification                                                     |
| -----------------------------: | :---------------------------------------------------------------- |
| Chipset                        | Mediatek Kompanio 1300T (MT6893)                                        |
| CPU                            | Octa-core (4x 2.6 GHz ARM Cortex-A78 & 4x 2.0 GHz ARM Cortex-A55)           |
| GPU                            | Mali-G77 MC9                                                      |
| Memory                         | 8GB RAM (LPDDR4X)                                     |
| Shipped OS                     | Android 12                                               |
| Storage                        | 256GB (UFS 3.1)                                          |
| MicroSD                        | Up to 1TB                                                         |
| Battery                        | 8200mAh (non-removable), 20W fast charge                    |
| Display                        | 11.2", 2560 x 1536 pixels, OLED, 120Hz (~267 ppi density)       |

$~$

## Working features so far

### Blocking checks
- [ ] Correct screen/recovery size
- [ ] Working Touch, screen
- [ ] Working slot switching
- [ ] Backup to internal/microSD
- [ ] Restore from internal/microSD
- [ ] reboot to system
- [ ] ADB

### Medium checks
- [ ] update.zip sideload
- [ ] UI colors (red/blue inversions)
- [ ] Screen goes off and on
- [ ] F2FS/EXT4 Support, exFAT/NTFS where supported
- [ ] all important partitions listed in mount/backup lists
- [ ] backup/restore to/from external (USB-OTG) storage
- [ ] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [ ] decrypt /data
- [ ] Correct date

### Minor checks
- [ ] MTP export
- [ ] reboot to bootloader
- [ ] reboot to recovery
- [ ] poweroff
- [ ] battery level
- [ ] temperature
- [ ] encrypted backups
- [ ] input devices via USB
- [ ] USB mass storage export
- [ ] set brightness
- [ ] vibrate
- [ ] screenshot
- [ ] partition SD card

$~$

## How to build

1. Set up the build environment following the instructions [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/blob/twrp-12.1/README.md#getting-started)

2. In the root folder of the fetched repo, clone the device tree:

```bash
git clone https://github.com/YZBruh/android_device_lenovo_TB132FU device/lenovo/TB132FU
```

3. To build:

```bash
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_TB132FU-eng
mka bootimage
```

$~$

## Device picture
