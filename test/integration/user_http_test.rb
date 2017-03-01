require 'test_helper'

class UserHttpTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
    @comment = build(:comment)
    @user_one = @comment.post.user
    @user_two = @comment.user
  end

  test 'users#index' do

    assert @comment.save
    get '/users'
    assert response.ok?
    binding.pry
    assert_equal "", JSON.parse(response.body)

  end

end
