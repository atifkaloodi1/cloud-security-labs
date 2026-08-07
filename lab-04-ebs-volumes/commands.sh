#!/bin/bash
# ---------------------------------------------------------------------------
# Lab 4 — Working with EBS: terminal command reference
#
# These are the in-instance commands used to format, mount, and verify the
# attached EBS volume, plus the snapshot delete/restore verification.
# Run on the "Lab" EC2 instance (Amazon Linux) via Session Manager.
#
# NOTE ON DEVICE NAMES: the volume is attached in the console as /dev/sdb,
# but Amazon Linux remaps it to /dev/xvdb — so `df -h` shows /dev/xvdb even
# though the mount commands reference /dev/sdb. Same disk, different label.
# ---------------------------------------------------------------------------

# Switch to the ec2-user home directory (Task 3)
sudo su -l ec2-user

# --- Task 4: Create and configure the file system ---

# View storage before adding the new volume (shows only the 8 GB root volume)
df -h

# Create an ext3 file system on the newly attached 1 GiB volume
sudo mkfs -t ext3 /dev/sdb

# Create a mount point directory
sudo mkdir /mnt/data-store

# Mount the volume
sudo mount /dev/sdb /mnt/data-store

# Persist the mount across reboots by appending to /etc/fstab
echo "/dev/sdb   /mnt/data-store ext3 defaults,noatime 1 2" | sudo tee -a /etc/fstab

# Confirm the fstab entry
cat /etc/fstab

# View storage again — now shows /dev/xvdb mounted at /mnt/data-store
df -h

# Write a test file to the mounted volume
sudo sh -c "echo some text has been written > /mnt/data-store/file.txt"

# Verify the file contents
cat /mnt/data-store/file.txt

# --- Task 5: After creating the snapshot, delete the file ---

# Delete the test file (simulating data loss)
sudo rm /mnt/data-store/file.txt

# Confirm the file is gone
ls /mnt/data-store/

# --- Task 6: After restoring a volume from the snapshot ---

# Create a mount point for the restored volume
sudo mkdir /mnt/data-store2

# Mount the restored volume (attached in console as /dev/sdc)
sudo mount /dev/sdc /mnt/data-store2

# Verify the previously deleted file is present again (recovered from snapshot)
ls /mnt/data-store2/
cat /mnt/data-store2/file.txt
