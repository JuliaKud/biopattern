### biopattern

`make -C src -j7`

run `./createCGroup.sh` — to create cgroup with cpuset.cpus: 0

run the app within created cgroup `sudo cgexec -g cpuset:/cgroup --sticky ./src/biopattern 1 1000`
