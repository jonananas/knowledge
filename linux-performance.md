
# Hints on Linux performance issues

## Links

- [How to Check Processor and CPU Details on Linux – Command Examples](https://www.binarytides.com/linux-check-processor/)
- [9 Commands to Check CPU Information on Linux](https://www.binarytides.com/linux-cpu-information/)
  - Short on how to interpret /proc/cpuinfo, lscpu, etc.

## CPU Architecture info

```bash
lscpu
```

Print vendor hardware details, (NOTE: not running parameters, e.g. actual running speed might be less because of energy limits etc)

## Detailed CPU info

```bash
cat /proc/cpuinfo
```

Prints detailed hardware details, these are running parameters, e.g. `cat /proc/cpuinfo | grep MHz` accurately reflects running speed.
If frequency differs against lscpu, this indicates 

# CPU Scaling, e.g. energy saving info

If a laptop is running slow, you may run below to check power scheme.

```bash
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
```

Below are the most commone ones, [extensive list](https://wiki.archlinux.org/title/CPU_frequency_scaling#Scaling_governors)

Governor    | Description
------------|---------------------------------------------------
performance | Run the CPU at the maximum frequency.
powersave   | Run the CPU at the minimum frequency.
schedutil   | Scheduler-driven CPU frequency selection

To activate a particular governor, run `cpupower frequency-set -g governor`

## CPU benchmark

Good tools to see CPU and resource utilization

- System monitor
  - To help checking if an application is maxing out on resource like cpu, memory, network, etc.
- top
  - Helpful commandline utility to do the same, but requires more from the user.

For benchmarking, sysbench can be used, see below for some comparisons.
The command `sysbench cpu run` will run one thread, e.g. reflects only maximum for one thread. Tools above should reflect CPU usage, but not neccesarily on one core.

```bash
docker run -ti ubuntu:20.04 bash -c "apt-get update && apt-get install -y sysbench && sysbench cpu run"

Ubuntu 20.04, AMD Ryzen 7 3700X:
CPU speed:
    events per second:  2166.81

Ubuntu 20.04 in Virtual Machine on MacBook Pro:
CPU speed:
    events per second:  1202.13
## CPU benchmark

Good tools to see CPU and resource utilization

- System monitor
  - To help checking if an application is maxing out on resource like cpu, memory, network, etc.
- top
  - Helpful commandline utility to do the same, but requires more from the user.

For benchmarking, sysbench can be used, see below for some comparisons.
The command `sysbench cpu run` will run one thread, e.g. reflects only maximum for one thread. Tools above should reflect CPU usage, but not neccesarily on one core.

```bash
docker run -ti ubuntu:20.04 bash -c "apt-get update && apt-get install -y sysbench && sysbench cpu run"

Ubuntu 20.04, AMD Ryzen 7 3700X:
CPU speed:
    events per second:  2166.81

Ubuntu 20.04 in Virtual Machine on MacBook Pro:
CPU speed:
    events per second:  1202.13
## CPU benchmark

Good tools to see CPU and resource utilization

- System monitor
  - To help checking if an application is maxing out on resource like cpu, memory, network, etc.
- top
  - Helpful commandline utility to do the same, but requires more from the user.

For benchmarking, sysbench can be used, see below for some comparisons.
The command `sysbench cpu run` will run one thread, e.g. reflects only maximum for one thread. Tools above should reflect CPU usage, but not neccesarily on one core.

```bash
docker run -ti ubuntu:20.04 bash -c "apt-get update && apt-get install -y sysbench && sysbench cpu run"

Ubuntu 20.04, AMD Ryzen 7 3700X:
CPU speed:
    events per second:  2166.81

Ubuntu 20.04 in Virtual Machine on MacBook Pro:
CPU speed:
    events per second:  1202.13

AWS t3.small with Amazon Linux:
CPU speed:
    events per second:  1016.22

Old Algoryx laptop i5 older than gen 8:
CPU speed:
    events per second:  954.91

Intel(R) Core(TM) i5-8365U CPU @ 1.60GHz in powersave mode
CPU speed:
    events per second:   555.44

Intel(R) Core(TM) i5-8365U CPU @ 1.60GHz in performance mode
CPU speed:
    events per second:   1291

Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz in performance mode
CPU speed:
    events per second:  1600.72
```

## Graphic card info

```bash
sudo apt-get install -y mesa-utils
glxinfo|grep -i renderer
OpenGL renderer string: GeForce RTX 2080 Super/PCIe/SSE2
```

This reflects which graphics card is used for rendering. It the output is not reflecting the graphic card, then it is very possible cpu is used for rendering (slow).

`nvidia-smi` can be used to show graphic card driver details if you have an nvidia card and the nvidia drivers are installed.
