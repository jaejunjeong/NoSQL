##install pymongo
python3 -m pip install pymongo

##
from pymongo import MongoClient
user = 'root'
password = '' # CHANGE THIS TO YOUR PASSWORD
host='localhost'
#create the connection url
connecturl = "mongodb://{}:{}@{}:27017/?authSource=admin".format(user,password,host)

# connect to mongodb server
print("Connecting to mongodb server")
connection = MongoClient(connecturl)

# get database list
print("Getting list of databases")
dbs = connection.list_database_names()

# print the database names

for db in dbs:
    print(db)
print("Closing the connection to the mongodb server")

# close the server connecton
connection.close()

##check thorugh shell
python3 mongo_connect.py
