require 'mongo'

class Irb::Mongo
  
  def initialize(db)
    @client = Mongo.client.new
    @db = @client[db]
  end
  
  def method_missing(collection_name)
    return @db[collection_name]
  end
  
end