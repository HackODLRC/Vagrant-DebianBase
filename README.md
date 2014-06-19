Vagrant-DebianBase
==================

A clean Debian 7.4 installation, which some additional Swift components already installed in the home directory.

Install Vagrant and Git. 

Then:

    git clone https://github.com/HackODLRC/Vagrant-DebianBase
	cd Vagrant-DebianBase
	vagrant up
	
The machine will be accessible over a host-only connection at 192.168.77.2

In testing, the 'VirtualBox Host-Only Network' on the Windows host was set to 192.168.77.1.
That might not be required. 

Remember: you still need to add your credentials to the `.profile` file to enable access to swift.

    vagrant ssh
   
    nano .profile
   
And add to the bottom:
   
    export OS_USERNAME=xxxxx
    export OS_PASSWORD=xxxxx
    export OS_TENANT_NAME=xxxxx
    export OS_AUTH_URL=xxxxx
    export OS_REGION_NAME=xxxxx
   
  