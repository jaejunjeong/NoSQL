###Create
##insert val into collection
db.languages.insert({"name":"java","type":"object oriented"})
db.languages.insert({"name":"python","type":"general purpose"})
db.languages.insert({"name":"scala","type":"functional"})
db.languages.insert({"name":"c","type":"procedural"})
db.languages.insert({"name":"c++","type":"object oriented"})

###Read
##find first line
db.languages.findOne()

##find all lines
db.languages.find()

##list first 3 documents in the collection.
db.languages.find().limit(3)

##find specific document
db.languages.find({"name":"python"})

##This command lists all the documents with only name field in the output.
db.languages.find({},{"name":1})
##This command lists all the documents without the name field in the output.
db.languages.find({},{"name":0})
##This command lists all the “object oriented” languages with only “name” field in the output.
db.languages.find({"type":"object oriented"},{"name":1})

###Replace
##The ‘updateMany’ command is used to update documents in a mongodb collection, and it has the following generic syntax.
db.collection.updateMany({what documents to find},{$set:{what fields to set}})
##change all documents(add field)
db.languages.updateMany({},{$set:{"description":"programming language"}})
##change specific document
db.languages.updateMany({"name":"python"},{$set:{"creator":"Guido van Rossum"}})
db.languages.updateMany({"type":"object oriented"},{$set:{"compiled":true}})

###Delete
##delete specific rows
db.languages.remove({"name":"scala"})
db.languages.remove({"type":"object oriented"})

##delete all
db.languages.remove({})


