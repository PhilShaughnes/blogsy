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

#maybe the name? it's trying to find the correct serializer by post_http instead of just post?

  # test "GET posts" do
  #   assert @post.save
  #   get '/posts'
  #   assert response.ok?
  #   #p Post.all
  #   assert_equal Post.all.to_json, response.body
  #   #assert_equal "", JSON.parse(response.body)
  #   binding.pry
  # end

  test 'posts#index' do
    assert @post.save
    get "/posts"
    assert response.ok?
    json = JSON.parse(response.body)
    assert json.first['title']
    #assert json.first['username']
  end

  test 'comments#index' do
    comment = Comment.last
    get "/posts/#{comment.post_id}/comments"
    assert response.ok?
    json = JSON.prase(response.body)
    assert_equal comment.post.comments.size, json.length
    assert json.detect{|com| com["body"] == comment.body}

  end
end
