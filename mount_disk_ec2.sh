# Launch an EC2 instance and attach the disks to it

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
