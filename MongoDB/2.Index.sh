##insert data into 'bigdata' collection in db 'training'
use training
for (i=1;i<=200000;i++){print(i);db.bigdata.insert({"account_no":i,"balance":Math.round(Math.random()*1000000)})}

##check rows
db.bigdata.count()

##check time spent for 'find' function(eg. "account_no":58982)
db.bigdata.find({"account_no":58982}).explain("executionStats").executionStats.executionTimeMillis

##create index on accout_no
db.bigdata.createIndex({"account_no":1})

##check index
db.bigdata.getIndexes()

##check time again(you can find time lessen)
db.bigdata.find({"account_no": 69271}).explain("executionStats").executionStats.executionTimeMillis

##drop index
db.bigdata.dropIndex({"account_no":1})
