require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
  	@post = posts(:one)
  end

  test "the post title should be valid" do
  	assert_equal("Maimit", @post.title)
  end
end
