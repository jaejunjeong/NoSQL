//create  keyspace
CREATE KEYSPACE training  
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};

//show detail of keyspace 'training'
decribe training

//alter a keyspace (NetworkTopologyStrategy is used when all the nodes in your cassandra cluster are spread across multiple data centers)
ALTER KEYSPACE training
WITH replication = {'class': 'NetworkTopologyStrategy'};

//change the keyspace
use training;

//show list of tables in keyspace 'training'
describe tables

//drop keyspace
drop keyspace training;

//check the keyspaces whether training is dropped
use system;
describe keyspaces
