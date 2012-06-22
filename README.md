# Webapp Infrastructure Potpourri 


This project demonstrates the use of the following technologies:
* [selenium](http://www.seleniumhq.org)
** automated browser testing
* [hudson](http://hudson-ci.org)
** continuous integration - build and test your projects consistently
* [nagios](http://nagios.org)
** monitoring hosts and services
* [puppet]( http://en.wikipedia.org/wiki/Puppet_&#41;software&#42; )
** provisioner and configuration management
* [vagrant](http://vagrantup.com)
** VM setup for developers
* [liquibase](http://www.liquibase.org)
** helps to manage your database changes

For the overview see: http://mathforum.org/~amir/share/ip/

For the slides see: http://mathforum.org/~amir/share/ip/reveal.js/

## Requirements
* java (jre 1.6)
* postgres
* firefox with selenium ide extension installed
* apache 

### optional

* ant
* eclipse
* [vagrant](http://vagrantup.com)

### included

* hudson 2.2.1
* liquibase 2.0.5
* [selenium webdriver java 2.22.0 and dependencies](http://seleniumhq.org/download/)
* [tomcat 7.0](http://tomcat.apache.org/download-70.cgi)
* [junit](http://www.junit.org/)
* [postgres-9.1 jdbc4 driver](http://jdbc.postgresql.org/download.html)
* [twitter bootstrap](http://twitter.github.com/bootstrap/)

## Getting Started

### Download/checkout/fork

    wget -O wip.zip https://github.com/amirdt22/wip/zipball/master
    unzip wip.zip
    cd amirdt22-wip-*

or

    git clone https://github.com/amirdt22/wip.git
    cd wip 

### Initialize the database

    cat sql/schema.sql | psql

### apache

Set apache up with a directory that hudson can copy files into

### Start Hudson

set environment variable HUDSON_HOME to hudson/home

    export HUDSON_HOME=hudson/home hudson/tomcat/bin/startup.sh #also shutdown.sh

open [http://localhost:4080/hudson/](http://localhost:4080/hudson/)

make any necessary environment changes (Build -> Execute shell - consider apache path from above)
[configure the job](http://localhost:4080/hudson/job/demo/configure)

### Prep vagrant

 vagrant box add base http://files.vagrantup.com/lucid32.box

If your host OS doesn't have vt-x you will need to edit the vbox xml file changing:
 cpu count="2" to cpu count="1"
and all of the HardwareVirtEx enabled="true" to enabled="false".  Make sure your changes stick (virtualbox needs to be off when you make these changes otherwise it will overwrite them).

## Next steps

* get vagrant files running in VM (currently just mounted at /vagrant)
** postgres initialization (vagrant:vagrant:vagrant)
** rest of services...
* more [nagios](http://nagios.org)
* [jmeter](http://jmeter.apache.org/)
