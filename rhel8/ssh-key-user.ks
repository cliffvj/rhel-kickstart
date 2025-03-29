# Basic Configuration
lang en_US
keyboard us
timezone Asia/Manila --utc
rootpw $2b$10$bgxiZJnHJX4UrOhFvGzThukiF0Rb.BbXliqZ3ohPlo7ULsYBCtTiO --iscrypted
reboot --eject

cdrom
eula --agreed
# Partition
bootloader --append="rhgb quiet crashkernel=auto"
zerombr
clearpart --all --initlabel
autopart

# Network
network --bootproto=dhcp
firstboot --disable

# Predefined ssh-key for user beats
ssh-key --username=beats "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJp1AJ5pUrnYnOlfKOP2IaXtl2ae/Spda0Hokukooywh2fmqW2s7W/nPy0rN08k6sCOYwkAUKprHbfvK7XlT+B4dQ2cc58URS5jx6u743+YTf1Y9b73O2gV/DWRsBEOVCPi04pt9CwB9qQT/RtG75njDObWSUAsQVO1uBHMjRyz7ymC7S7ioFejWYA8dingxmROaZdXzlhxp2VeDo3afE8+qBaLiL0yW8LtUw6q7NpYrkrFyPMAlyakvtPPfkOqJyz1D39atAhxQ3yGQlb5yCCvQHFheaeiiTl9xE1Fh4pUlmK/R8a51RrpBSxsb1/xwG2mL3qM0jonPfi4r97/mmFNZmX+krfyo4It9JHXGbV1tOq09yCaaVtOmtafaAyp1hrcN5pKUcELSfGLaaz2OcedMxnlwvkA0tcPX5f91fDD99P33v8IiBicNSyUuwXHhrFfTW4sCN/r5zqRpx7flOe18Tfn6BiKgvMBzMQ8hec5mWlaDZcTt9ZhoaH/4BOzSM= pcuser@X48"

# Security
# selinux --enforcing
firewall --disabled

%packages
@^minimal-environment
# Package Groups
@@file-server
%end
