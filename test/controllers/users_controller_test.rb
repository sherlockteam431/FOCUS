require 'test_helper'

class UsersControllerTest < ActionController::TestCase
   test "creating a new user should save to database and generate an id" do
      testFirstName = "first"
      testLastName = "last"
      User.create(testFirstName, testLastName)
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert newUser != nil && newUser.userId != nil
   end
   
   test "creating a new user should have a first name" do
      testFirstName = "first"
      testLastName = "last"
      User.create(testFirstName, testLastName)
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert newUser != nil && newUser.userId != nil
      assert newUser.firstName == testFirstName
   end
   
   test "creating a new user should have a last name" do
      testFirstName = "first"
      testLastName = "last"
      User.create(testFirstName, testLastName)
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert newUser != nil && newUser.userId != nil
      assert newUser.lastName == testLastName
   end
   
   test "creating a new user should set total points to o" do
      testFirstName = "first"
      testLastName = "last"
      User.create(testFirstName, testLastName)
      newUser = User.find_by(firstName: testFirstName, lastName: testLastName)
      assert newUser != nil && newUser.userId != nil
      assert newUser.totalPoints == 0
   end
end
