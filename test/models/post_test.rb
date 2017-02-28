require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup
    @post = build(:post)
    super
  end
  # test "the truth" do
  #   assert true
  # end
  should belong_to(:user)
  should have_many(:comments)

  should validate_presence_of(:title)
  should validate_presence_of(:body)

  should have_db_column(:comments_count)
end
