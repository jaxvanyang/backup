# WSL Notes

## Compact Vdisk

From [WSL 2 should automatically release disk space back to the host OS · Issue #4699 · microsoft/WSL](https://github.com/microsoft/WSL/issues/4699#issuecomment-565700099).

First recycle disk space in WSL:

```bash
sudo fstrim /
```

For pro edition:

```pwsh
wsl --shutdown
# check if WSL is down
wsl --list --running
optimize-vhd -Path .\ext4.vhdx -Mode full
```

For home edition:

```pwsh
wsl --shutdown
# check if WSL is down
wsl --list --running
diskpart
# open window Diskpart
select vdisk file="C:\WSL-Distros\…\ext4.vhdx"
attach vdisk readonly
compact vdisk
detach vdisk
exit
```

For Docker Desktop:

1. Go to Dashboard - Troubleshoot.
2. Use Clean / Purge data with CAUTION!

## Backup

```pwsh
wsl --shutdown
# check if WSL is down
wsl --list --running
wsl --export Arch E:\backups\wsl\arch-wsl.tar
```

Compress in WSL:

```bash
cd /mnt/e/backups/wsl
# show progress by pv, parallel compress by pigz
pv arch-wsl.tar | pigz > arch-wsl.tgz
# optional
rm arch-wsl.tar
```