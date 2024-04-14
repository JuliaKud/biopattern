#!/bin/bash

sudo cgcreate -g cpuset:/cgroup
sudo cgset -r cpuset.cpus=0 /cgroup
result=$(sudo cgget -r cpuset.cpus /cgroup)
if [[ "$result" == *"/cgroup:"* && "$result" == *"cpuset.cpus: 0"* ]]; then
    echo "Successfully created /cgroup"
else
    echo "Error: couldn't create /cgroup"
fi
