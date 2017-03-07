require 'test_helper'
require 'users_controller.rb'

class UsersControllerTest < ActionController::TestCase
   setup do
      @usersController = UsersController.new
   end
   
   #test showing how to call a controller function
   test "the truth" do
      assert @usersController.testFunction
   end
   
   test "creating a new user should save to database and generate an id" do
      testFirstName = "testFirst"
      testLastName = "testLast"
      @usersController.create
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert (newUser != nil && newUser.userId != nil)
   end

   test "creating a new user should have a first name" do
      testFirstName = "firstExist"
      testLastName = "last"
      @usersController.create(testFirstName, testLastName)
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert newUser != nil && newUser.userId != nil
      assert newUser.firstName == testFirstName
   end
   
   test "creating a new user should have a last name" do
      testFirstName = "first"
      testLastName = "lastExist"
      @usersController.create(testFirstName, testLastName)
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert newUser != nil && newUser.userId != nil
      assert newUser.lastName == testLastName
   end
   
   test "creating a new user should set total points to 0" do
      testFirstName = "firstPoints"
      testLastName = "lastPoints"
      @usersController.create(testFirstName, testLastName)
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert newUser != nil && newUser.userId != nil
      assert newUser.totalPoints == 0
   end
end
