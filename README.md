# Angry Hobo

This is a basic MEAN stack setup using Vagrant. There are a million ways out
there to do this, this is going to try and do it as cleanly as possible.

This is a sample application to demonstrate using Vagrant along with the MEAN stack. express-generator was used to create sample ExpressJS application but can be replaced with whatever ExpressJS application structure you wish to use.

### Vagrant
To set up the virtual environment, we use [Vagrant](http://www.vagrantup.com/) along with [VirtualBox](https://www.virtualbox.org/). The included [Vagrantfile](blob/master/Vagrantfile)

Run `vagrant  up` to bring up your machine and run the initial vagrant provision and to subsequently bring up your machine.

Add the following line to your hosts file:

`192.168.123.123 local.angry-hobo` (Replacing 'angry-hobo' with your project's name)

SSH into the Vagrant VM with `vagrant ssh` and then run the application by changing into the */home/vagrant/workspace/angry-hobo/bin/* directory with `cd ~/workspace/angry-hobo/bin` and running:

`DEBUG=angry-hobo && sudo ./www` (Replacing 'angry-hobo' with your project's name)

You can now hit `local.angry-hobo` and see your new app running!

### Help

Please submit issues with whatever questions/problems you might encounter, I'll get to them as soon as possible. You can also reach me at zahid@zmhr.me with questions and comments :)
