require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = build(:user)
    super
  end
  # test "the truth" do
  #   assert true
  # end

  should have_many(:posts)
  should have_many(:comments)

  should validate_presence_of(:username)
  should validate_presence_of(:email)

end
