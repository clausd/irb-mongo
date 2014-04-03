require 'helper'

class TestIrbMongo < Test::Unit::TestCase
  should "give me an ambient handle to a local Mongo instance" do
    # mock some mongo
    mongo.testcollection.insert({test: 'object'}) #some expectation
    mongo.testcollection.find.count.is 1
  end
end
