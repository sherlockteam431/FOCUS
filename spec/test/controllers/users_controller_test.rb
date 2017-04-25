require 'test_helper'
require 'users_controller.rb'

class UsersControllerTest < ActionController::TestCase
   setup do
      @usersController = UsersController.new
   end
   
   test "creating a new user should save to database and generate an id" do
      testFirstName = "testFirst"
      testLastName = "testLast"
      post :create, user: {firstName: testFirstName, lastName: testLastName}
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert (newUser != nil && newUser.userId != nil)
   end

   test "creating a new user should have a first name" do
      testFirstName = "firstExist"
      testLastName = "last"
      post :create, user: {firstName: testFirstName, lastName: testLastName}
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert newUser != nil && newUser.userId != nil
      assert newUser.firstName == testFirstName
   end
   
   test "creating a new user should have a last name" do
      testFirstName = "first"
      testLastName = "lastExist"
      post :create, user: {firstName: testFirstName, lastName: testLastName}
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert newUser != nil && newUser.userId != nil
      assert newUser.lastName == testLastName
   end
   
   test "attempting to create a user without a first name should throw an error" do
      testFirstName = "firstFail"
      testLastName = "lastFail"
      assert_raises(Exception) {post :create, user: {firstName: testFirstName}}
   end
end
