##insert data
use training
db.marks.insert({"name":"Ramesh","subject":"maths","marks":87})
db.marks.insert({"name":"Ramesh","subject":"english","marks":59})
db.marks.insert({"name":"Ramesh","subject":"science","marks":77})
db.marks.insert({"name":"Rav","subject":"maths","marks":62})
db.marks.insert({"name":"Rav","subject":"english","marks":83})
db.marks.insert({"name":"Rav","subject":"science","marks":71})
db.marks.insert({"name":"Alison","subject":"maths","marks":84})
db.marks.insert({"name":"Alison","subject":"english","marks":82})
db.marks.insert({"name":"Alison","subject":"science","marks":86})
db.marks.insert({"name":"Steve","subject":"maths","marks":81})
db.marks.insert({"name":"Steve","subject":"english","marks":89})
db.marks.insert({"name":"Steve","subject":"science","marks":77})
db.marks.insert({"name":"Jan","subject":"english","marks":0,"reason":"absent"})

##see two lines from 'marks' collection ($limit)
db.marks.aggregate([{"$limit":2}])

##This command sorts the documents based on field marks in ascending order.
db.marks.aggregate([{"$sort":{"marks":1}}])
##This command sort the documents based on field marks in descending order.
db.marks.aggregate([{"$sort":{"marks":-1}}])

###A pipeline consists of one or more operators declared inside an array. The operators are comma separated.
##Top 2 marks
db.marks.aggregate([{"$sort":{"marks":-1}},{"$limit":2}])

##group by "subject" and show avg "marks"
db.marks.aggregate([{"$group":{"_id":"$subject","average":{"$avg":"$marks"}}}])

##select top 2 avg "marks" group by "subject"
db.marks.aggregate([{"$group":{"_id":"$subject","average":{"$avg":"$marks"}}},{"$sort":{"average":-1}},{"$limit":2}])

##Sum all of marks group by name
db.marks.aggregate([{"$group":{"_id":"$name","sum":{"$sum":"$marks"}}}])

##Find the maximum marks scored in each subject.
db.marks.aggregate([{"$group":{"_id":"$subject","max":{"$max":"$marks"}}}])

##Find the minimum marks scored by each student.
db.marks.aggregate([{"$group":{"_id":"$name","min":{"$min":"$marks"}}}])
