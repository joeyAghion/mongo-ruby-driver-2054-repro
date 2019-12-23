require 'mongo'
client = Mongo::Client.new('mongodb://db:27017/test').with(write: {w: 0})
collection = client['tests']
puts "Count before upsert: #{collection.count}"

collection.find(_id: 'foo').update_one({'$set' => {foo: 'bar'}}, upsert: true)
sleep 1
puts "Count after upsert: #{collection.count}"
