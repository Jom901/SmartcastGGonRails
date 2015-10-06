require 'test_helper'

class WorkerTest < ActiveSupport::TestCase
	def setup
		@worker = Worker.new(name:"Jom", email:"j@j.com", bio:"My name is jom and I rock", role:"Administrator",twitter:"@jom")
	end
  test "should be valid" do
    assert @worker.valid?
  end
   test "name should be present" do
    @worker.name = "     "
    assert_not @worker.valid?
  end

  test "email should be present" do
    @worker.email = "     "
    assert_not @worker.valid?
  end

  test "bio should be present" do
    @worker.bio = "     "
    assert_not @worker.valid?
  end

  test "role should be present" do
    @worker.role = "     "
    assert_not @worker.valid?
  end

end
