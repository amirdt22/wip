Webapp Infrastructure Potpourri 
==


This project demonstrates the use of the following technologies:
* liquibase
* selenium
* hudson

http://mathforum.org/~amir/share/ip/

Requirements
===
* java (jre 1.6)
* environment variable HUDSON_HOME set to hudson/home
* postgres

Getting Started
===

Initialize the database
====

<code>
cat sql/schema.sql | psql
</code>

Start Hudson
====

<code>
hudson/tomcat/bin/statup.sh #then visit http://localhost:4080/hudson/
</code>
