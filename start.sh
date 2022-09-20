#!/bin/bash
pushd "$(dirname "$0")" # connect to root

./scripts/start_dc1.sh

sleep 1
# Add qflock network between datacenters
docker network connect qflock-net qflock-spark-dc1
docker network connect qflock-net qflock-storage-dc1

# These must be run after all dockers up and fully connected

#python3 ./scripts/set_network_rate.py qflock-net-dc1 1gbit
#python3 ./scripts/set_network_rate.py qflock-net 100mbit


