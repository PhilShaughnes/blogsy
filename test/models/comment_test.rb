require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    # @user_one = build(:user)
    # @user_two = build(:user)
    # @user_one.posts << @post = build(:post)
    @comment = build(:comment)
    # @user_two.comments << @comment
    # @post.comments << @comment

    super
  end
  # test "the truth" do
  #   assert true
  # end

  should belong_to(:user)
  should belong_to(:post)

  should validate_presence_of(:body)
end
