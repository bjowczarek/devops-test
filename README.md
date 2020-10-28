
# Running Technical Test  

### Install dependencies (VirtualBox, Vagrant, Ansible)

  1. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
  2. Download and install [Vagrant](http://www.vagrantup.com/downloads.html).
  3. [Mac/Linux only] Install [Ansible](http://docs.ansible.com/intro_installation.html).

### Getting started
  1. Download this project and put it wherever you want.
  2. Open Terminal, cd to this directory (containing the `Vagrantfile` and this README file).
  3. Run below commands  
  
```
$cd <directory_where_the_files_are_downloaded>

$vagrant up

$ansible-playbook playbooks/deploy.yml -i inventory
```

### Implementation Details
 Server Details:  
  * app1server : nginx and nodejs are installed ; nginx is used as proxy for nginx server
  * app2server : nginx and nodejs are installed ; nginx is used as proxy for nginx server
  * loadbalancer : nginx is installed ; configured nginx to act as loadbalancer for app1server and app2server


### Accesssing Servers 
  Open Browser and enter url

  * Load Balancer ( Refresh page to see content served from two servers)
  ```
    http://192.168.4.2/
  ```
  * Accessing application servers  over Node Js port (3000); we can be disabled later as nginx proxy is enabled
  ```
    http://192.168.4.3:3000/
    http://192.168.4.4:3000/
  ```
  * Accessing application servers over 80 port (nginx proxy for node servers)
  ```
    http://192.168.4.3/
    http://192.168.4.4/
  ```
### Improvements


  * A webhook implementation of github can be done to trigger CI/CD pipeline in Jenkins or other CI/CD server.
  * 'applcation' can be containerised using docker and kubernetes
  * Terraform can be used to provision resources in cloud replacing Vagrant  
  * git module can be used in ansible for quick check out from github



### Author 
Sudeer Vendra

