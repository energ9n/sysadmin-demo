# sysadmin-demo
A demonstration of Azure and Linux system administration.

## Ansible

The files in the Ansible folder were used to configure the network depicted below.

![](Diagrams/AzureNetwork.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Ansible files may be used to install only certain pieces of it, such as Filebeat.

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Network Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the network and system files.


### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the Local Workstation IP address.

Machines within the network can only be accessed by the Local Workstation.

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because this makes it possible to replicate the configuration.

The playbook implements the following tasks:
- Install Docker
- Install Python
- Increase memory
- Install ELK
- Install Filebeat