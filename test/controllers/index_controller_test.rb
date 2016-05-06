require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get robotarena" do
    get :robotarena
    assert_response :success
  end

end
