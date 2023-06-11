##download mongoimport(for json)
wget https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu1804-x86_64-100.3.1.tgz
tar -xf mongodb-database-tools-ubuntu1804-x86_64-100.3.1.tgz
export PATH=$PATH:/home/project/mongodb-database-tools-ubuntu1804-x86_64-100.3.1/bin
echo "done"

##check mongoimport version
mongoimport --version

##start mongo
start_mongo

##import json file
mongoimport -u root -p yourpassword --authenticationDatabase admin --db yourdb --collection yourcollection --file yourjsonfile.json

##export json file
mongoexport -u root -p yourpassword --authenticationDatabase admin --db yourdb --collection yourcollection --out yourjsonfile.json

##export csv file
mongoexport -u root -p yourpassword --authenticationDatabase admin --db yourdb --collection yourcollection --out yourcsvfile.csv --type=csv --fields _id,clarity,cut,price

##connect mongo as root
mongo -u root -p password --authenticationDatabase admin local

##check version
db.version()

##checkc dbs
show dbs

##create db (if db already exist, it will start using it)
use training

##create collection 'mycollection'
db.createCollection("mycollection")

##show collection
show collections

##inserts the json document into collection 'mycollection'
db.mycollection.insert({"color":"white","example":"milk"})
db.mycollection.insert({"color":"blue","example":"sky"})

##gives you the number of documents in the collection 'mycollection'
db.mycollection.count()

##This command lists all the documents in the collection 'mycollection' (Notice that mongodb automatically adds an ‘_id’ field )
db.mycollection.find()
