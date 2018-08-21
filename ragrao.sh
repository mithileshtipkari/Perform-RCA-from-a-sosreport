#! /bin/bash
echo  -e "\e[1;31m=============================\e[0m"
echo  -e "\e[1;31mRed Hat Support Jurisdiction:\e[0m"
echo  -e "\e[1;31m=============================\e[0m"
echo
cat etc/*-release
echo
cat uname
echo
cat var/log/dmesg | grep --color=always -i mock
echo
cat boot/grub/grub.conf | grep --color -i title
echo
echo
cat boot/grub2/grub.cfg | grep --color -i menuentry | awk '{print $2,$3,$4}'
echo
echo  -e "\e[0;35m===================\e[0m"
echo  -e "\e[0;35mOperational Status:\e[0m"
echo  -e "\e[0;35m===================\e[0m"
echo
cat date
cat uptime
echo
echo  -e "\e[0;35m=======\e[0m"
echo  -e "\e[0;35mVENDOR:\e[0m"
echo  -e "\e[0;35m=======\e[0m"
echo
cat dmidecode | grep -A3 -i 'System Information'
echo
echo  -e "\e[0;35m========\e[0m"
echo  -e "\e[0;35mCLUSTER:\e[0m"
echo  -e "\e[0;35m========\e[0m"
echo
cat ps | grep --color -i 'css'
cat ps | grep --color -i 'rgmanager'
cat chkconfig | grep --color -i 'rgmanager'
cat sos_commands/systemd/system* | grep --color -i 'rgmanager'
cat chkconfig | grep --color -i 'cman'
cat sos_commands/systemd/system* | grep --color -i 'cman'
cat chkconfig | grep --color -i 'hp'
cat sos_commands/systemd/system* | grep --color -i 'hp'
cat sos_commands/systemd/system* | grep --color -i 'pacemaker'
less var/log/messages | grep --color -i cthats
cat ps | grep --color -i gab
cat installed-rpms | grep --color -i serviceguard
cat chkconfig | grep --color -i 'cassandra'
cat installed-rpms | grep --color -i 'galera'
echo
echo  -e "\e[0;35m===========\e[0m"
echo  -e "\e[0;35mPARAMETERS:\e[0m"
echo  -e "\e[0;35m===========\e[0m"
echo
less etc/sysctl.conf | grep -v "#"
echo
echo  -e "\e[0;33m==========\e[0m"
echo  -e "\e[0;33mBoot Info:\e[0m"
echo  -e "\e[0;33m==========\e[0m"
echo
less var/log/messages* | grep --color -i mock
echo
echo -e "\e[0;33m        OR      \e[0m"
echo
less var/log/messages* | grep -i kmsg
echo
echo  -e "\e[0;36m=========\e[0m"
echo  -e "\e[0;36mSuspects:\e[0m"
echo  -e "\e[0;36m=========\e[0m"
echo
less var/log/messages* | grep --color -i blocked | head
less var/log/messages* | grep --color -i tainted
less var/log/messages* | grep --color -i panic
less var/log/messages* | grep --color -i lockup | sort -u
less var/log/messages* | grep --color -i thermal
less var/log/messages* | grep --color -i hardware
less var/log/messages* | grep --color -i SIGTERM
less var/log/messages* | grep --color -i shutdown
less var/log/messages* | grep --color -i 'signal 15'
less var/log/messages* | grep --color -i 'warning' | tail -n 10
less var/log/messages* | grep --color -i 'Dazed and confused'
less var/log/messages* | grep --color -i 'Uhhuh'
less var/log/messages* | grep --color -i 'autostart'
less var/log/messages* | grep --color -i 'reboot'
less var/log/messages* | grep --color -i 'rejecting'
echo
echo  -e "\e[1;37m======\e[0m"
echo  -e "\e[1;37mKDUMP:\e[0m"
echo  -e "\e[1;37m======\e[0m"
echo
cat proc/iomem | grep --color -i crash
echo
cat etc/kdump.conf | grep -v "#"
echo
cat chkconfig | grep --color -i kdump
echo
cat sos_commands/systemd/system* | grep --color -i kdump
echo
echo
cat installed* | grep -i kexec
echo
echo  -e "\e[1;37m=============\e[0m"
echo  -e "\e[1;37mCommand Line:\e[0m"
echo  -e "\e[1;37m=============\e[0m"
echo
cat proc/cmdline | grep --color -i crash
echo
echo  -e "\e[1;37m=====\e[0m"
echo  -e "\e[1;37mGRUB:\e[0m"
echo  -e "\e[1;37m=====\e[0m"
echo
cat boot/grub/grub.conf | grep --color -i crash
echo
cat boot/grub2/grub.cfg | grep --color -i crash
echo
less var/log/messages* | grep --color -i kdump
echo
less sos_commands/bootloader/ls_-laR_.boot | grep --color -i kdump
echo
less sos_commands/boot/ls_-lanR_.boot | grep --color -i kdump
echo
less var/log/boot.log | grep --color -i kdump
echo
tree var/crash/
echo
