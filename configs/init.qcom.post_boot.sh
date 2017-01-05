#!/system/bin/sh

# Vibrator intensity (max - 3596, min - 116)
 echo 1500 > /sys/class/timed_output/vibrator/vtg_level

# Governors
# Enable governor for power cluster
 echo 1 > /sys/devices/system/cpu/cpu0/online
 echo "impulse" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# Enable governor for perf cluster
 echo 1 > /sys/devices/system/cpu/cpu4/online
 echo "impulse" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor

# Disable sched_boost
 echo 0 > /proc/sys/kernel/sched_boost