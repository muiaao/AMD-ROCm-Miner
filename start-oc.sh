#!/bin/bash
#Here is the example for the dreaded pirate roberts 570 samsung nitro's
#set fan to 50%
/opt/rocm/bin/rocm-smi --setfan 130 

#set GPU core clock frequencies and power profiles
/opt/rocm/bin/rocm-smi -d 0 --setsclk 5
/opt/rocm/bin/rocm-smi -d 1 --setsclk 7
/opt/rocm/bin/rocm-smi -d 2 --setsclk 4
/opt/rocm/bin/rocm-smi -d 3 --setsclk 3
/opt/rocm/bin/rocm-smi -d 4 --setsclk 5
/opt/rocm/bin/rocm-smi -d 5 --setsclk 7
/opt/rocm/bin/rocm-smi -d 6 --setsclk 3
/opt/rocm/bin/rocm-smi -d 7 --setsclk 3
/opt/rocm/bin/rocm-smi -d 8 --setsclk 3
/opt/rocm/bin/rocm-smi -d 9 --setsclk 3
/opt/rocm/bin/rocm-smi -d 10 --setsclk 3
/opt/rocm/bin/rocm-smi -d 11 --setsclk 3
/opt/rocm/bin/rocm-smi -d 12 --setsclk 3

#Use the command to find all the cards at once
#find /sys | grep power_dpm_state
#find /sys | grep power_dpm_force_performance_level

echo performance > /sys/devices/pci0000:00/0000:00:1c.1/0000:06:00.0/power_dpm_state
echo performance > /sys/devices/pci0000:00/0000:00:01.1/0000:02:00.0/power_dpm_state
echo performance > /sys/devices/pci0000:00/0000:00:1c.6/0000:08:00.0/power_dpm_state
echo performance > /sys/devices/pci0000:00/0000:00:1c.0/0000:05:00.0/power_dpm_state
echo performance > /sys/devices/pci0000:00/0000:00:1b.4/0000:04:00.0/power_dpm_state
echo performance > /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/power_dpm_state
echo performance > /sys/devices/pci0000:00/0000:00:1c.7/0000:09:00.0/power_dpm_state
echo manual > /sys/devices/pci0000:00/0000:00:1c.1/0000:06:00.0/power_dpm_force_performance_level
echo manual > /sys/devices/pci0000:00/0000:00:01.1/0000:02:00.0/power_dpm_force_performance_level
echo manual > /sys/devices/pci0000:00/0000:00:1c.6/0000:08:00.0/power_dpm_force_performance_level
echo manual > /sys/devices/pci0000:00/0000:00:1c.0/0000:05:00.0/power_dpm_force_performance_level
echo manual > /sys/devices/pci0000:00/0000:00:1b.4/0000:04:00.0/power_dpm_force_performance_level
echo manual > /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/power_dpm_force_performance_level
echo manual > /sys/devices/pci0000:00/0000:00:1c.7/0000:09:00.0/power_dpm_force_performance_level


#Run the first command and then then it will give you the find command to run to
#get the over drive paths

#lspci | grep VGA | awk '{print $1}'| sed s/^/find\ \\/sys\ \|\ egrep\ \-v\ volt\|grep\ od\|grep\ clk\|grep\ /

#find /sys | egrep -v volt|grep od|grep clk|grep 00:02.0
#find /sys | egrep -v volt|grep od|grep clk|grep 02:00.0
#find /sys | egrep -v volt|grep od|grep clk|grep 04:00.0
#find /sys | egrep -v volt|grep od|grep clk|grep 05:00.0
#find /sys | egrep -v volt|grep od|grep clk|grep 06:00.0
#find /sys | egrep -v volt|grep od|grep clk|grep 08:00.0
#find /sys | egrep -v volt|grep od|grep clk|grep 09:00.0

#echo 17 > /sys/devices/pci0000:00/0000:00:01.1/0000:02:00.0/pp_mclk_od
#echo 17 > /sys/devices/pci0000:00/0000:00:1b.4/0000:04:00.0/pp_mclk_od
#echo 17 > /sys/devices/pci0000:00/0000:00:1c.0/0000:05:00.0/pp_mclk_od
#echo 17 > /sys/devices/pci0000:00/0000:00:1c.1/0000:06:00.0/pp_mclk_od
#echo 17 > /sys/devices/pci0000:00/0000:00:1c.6/0000:08:00.0/pp_mclk_od
#echo 17 > /sys/devices/pci0000:00/0000:00:1c.7/0000:09:00.0/pp_mclk_od
