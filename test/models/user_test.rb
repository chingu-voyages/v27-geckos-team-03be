require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup 
    @user = User.new(name: "Nicolas", email: 'john@example.com', username: "Nicolasy", phone:"3476714580", password: "nope")
    # puts @user.email
  end 
  test "valid format email" do 
    @user.email = "hello"
    refute @user.valid?
    assert_not_nil @user.errors[:email], 'no validation error for email present'
  end   
  test 'valid user' do 
    assert @user.valid?
  end  
  test "invalid without name" do 
    @user.name = nil 
    refute @user.valid?, 'users name is nil'
    assert_not_nil @user.errors[:name], 'no validation error for name present'
  end
  test "password is greater than 2 chars" do 
    assert @user.password.length >= 2
  end 
  test 'invalid without email' do 
    user = User.new(name: 'Dino')
    refute user.valid?
    assert_not_nil user.errors[:email],'no validation error for email present'
  end 
  test "invalid password" do 
    @user.password = nil
    refute @user.valid?, "password is nil, should be a string"
    assert_not_nil @user.errors[:password],'no validation error for password present'
  end
end
