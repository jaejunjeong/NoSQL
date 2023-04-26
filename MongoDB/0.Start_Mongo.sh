##start mongo
start_mongo

##connect mongo as root
mongo -u root -p password --authenticationDatabase admin local

##check version
db.version()

##checkc dbs
show dbs

##create db (if db already exist, it will start using it)
use training

##inserts the json document into collection 'mycollection'
db.mycollection.insert({"color":"white","example":"milk"})
db.mycollection.insert({"color":"blue","example":"sky"})

##gives you the number of documents in the collection 'mycollection'
db.mycollection.count()

##This command lists all the documents in the collection 'mycollection' (Notice that mongodb automatically adds an ‘_id’ field )
db.mycollection.find()
