# Webapp Infrastructure Potpourri 


This project demonstrates the use of the following technologies:
* [liquibase](http://www.liquibase.org)
* [selenium](http://www.seleniumhq.org)
* [hudson](http://hudson-ci.org)

For the overview see: http://mathforum.org/~amir/share/ip/

## Requirements
* java (jre 1.6)
* postgres
* firefox with selenium ide extension installed

## Getting Started

### Download or checkout

<code>
wget -O wip.zip https://github.com/amirdt22/wip/zipball/master
unzip wip.zip
cd amirdt22-wip-*
</code>

or

<code>
git clone https://github.com/amirdt22/wip.git
cd wip
</code>

### Initialize the database

<code>
cat sql/schema.sql | psql
</code>

### Start Hudson

set environment variable HUDSON_HOME to hudson/home
<code>
export HUDSON_HOME=hudson/home hudson/tomcat/bin/statup.sh
</code>
open http://localhost:4080/hudson/
