#####################################################
# Launch an EC2 instance and attach the disks to it #
#####################################################

# Commands

# check that the devices exists and are attached to EC2 using:
# lsblk is used to display details about block devices.
lsblk

# lsblk -f to get information about all of the devices attached to the instance.
lsblk -f 

# Create mount points for disks using mkdir 
mkdir /mnt/disk1
mkdir /mnt/disk2

# Check the file system type using the file -s command
file -s /dev/<identifier>

# If there is a specific file system skip this step. 
# Create a file system using the command mkfs -t
mkfs -t xfs /dev/<identifier>

# mount the disk on specific folder using the mount command
mount /dev/<identifier> /mnt/disk1


#######################################################
# Automatically mount an attached volume after reboot #
#######################################################

# Identify the devices ID using blkid command:
blkid

# take note of UUID identifiers for each device. It would look like this:
# UUID=65a2063d-5757-4761-9ff2-a99938e0637a

# create a backup for the file fstab 
cp /etc/fstab /etc/fstab.old

# Include the following lines replacing with your routes and identifiers using the command vim
vim /etc/fstab

# xfs is the file system
# nofail flag prevents the server fails during rebooting in the case that the disk is not present
# 0 prevents the file system from being dumped
# 2 indicates that it is a non-root device
UUID=65a2063d-5757-4761-9ff2-a99938e0637a /mnt/disk1 xfs defaults,nofail 0 2
UUID=7cf0219c-7ae0-4cf5-8f4f-b445a670ce87 /mnt/disk2 xfs defaults,nofail 0 2

# Test the results by unmounting the devices and running mount command
mount -a 

# You can test the results by rebooting the server