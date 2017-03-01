require 'test_helper'

class PostHttpTest < ActionDispatch::IntegrationTest

  def setup
    @post = build(:post)
    super
  end
  # test "the truth" do
  #   assert true
  # end
  test "test the test" do
    puts "testing the test"
  end

  test "GET posts" do
    assert @post.save
    get '/posts'
    assert response.ok?
    #p Post.all
    assert_equal Post.all.to_json, response.body
    #assert_equal "", JSON.parse(response.body)
    binding.pry
  end
end
