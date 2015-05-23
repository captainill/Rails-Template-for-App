require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get make_short_id" do
    get :make_short_id
    assert_response :success
  end

end
