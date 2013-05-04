require 'test_helper'

class MenuControllerTest < ActionController::TestCase
  test "should get displayMenu" do
    get :displayMenu
    assert_response :success
  end

end
