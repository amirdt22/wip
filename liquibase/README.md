http://www.liquibase.org/

 sudo su - postgres
 createuser -W vagrant #password vagrant
 creaetdb -O vagrant vagrant
 exit

Then as vagrant
 cat sql/schema.sql | psql 
 ./liquibase changeLogSync
 ./liquibase status
 ./liquibase update
