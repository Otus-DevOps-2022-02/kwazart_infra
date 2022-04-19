#!/usr/bin/env python3
import subprocess
import re
import json

# Command for looking for instances
bashCommand = "yc compute instances list"
# JSON file name
filename = "inventory.json"


result_block = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE).communicate()
external_ips = re.findall("RUNNING \| \d*.\d*.\d*.\d*", str(result_block))
instance_names = re.findall("reddit-\w*", str(result_block))

instances = {}

# checking: count of ip equals count of lines with instance name
if len(external_ips) == len(instance_names):
    for i in range(len(external_ips)):

        # calculating correct group name
        instance_group_name = instance_names[i].split('-')[1]
        # calculating correct external ip (str)
        external_ip = external_ips[i].split()[2]

        # adding new hosts group
        if instance_group_name not in instances:
            instances[instance_group_name] = {'hosts': []}

        # adding host into group
        instances[instance_group_name]['hosts'].append(external_ip)

 # Writing JSON
with open(filename, 'w') as outfile:
    json.dump(instances, outfile)
