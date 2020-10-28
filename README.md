
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

# DevOps Engineer - Technical Test  
We think infrastructure is best represented as code, and provisioning of resources should be automated as much as possible. 

 Your task is to create a CI build pipeline that deploys this web application to a load-balanced  
environment. You are free to complete the test in a local environment (using tools like Vagrant and 
Docker) or use any CI service, provisioning tool and cloud environment you feel comfortable with (we  
recommend creating a free tier account so you don't incur any costs). 

 * Your CI job should:  
  * Run when a feature branch is pushed to Github (you should fork this repository to your Github account). If you are working locally feel free to use some other method for triggering your build.  
  * Deploy to a target environment when the job is successful.  
* The target environment should consist of: 
  * A load-balancer accessible via HTTP on port 80. 
  * Two application servers (this repository) accessible via HTTP on port 3000. 
* The load-balancer should use a round-robin strategy.  
* The application server should return the response "Hi there! I'm being served from {hostname}!".  

 ## Context 
We are testing your ability to implement modern automated infrastructure, as well as general knowledge of system administration. In your solution you should emphasize readability, maintainability and DevOps methodologies. 

 ## Submit your solution  
Create a public Github repository and push your solution in it. Commit often - we would rather see a history of trial and error than a single monolithic push. When you're finished, send us the URL to the repository. 

 ## Running this web application  
 This is a NodeJS application:  This is a NodeJS application:

- `npm test` runs the application tests - `npm test` runs the application tests
- `npm start` starts the http server
