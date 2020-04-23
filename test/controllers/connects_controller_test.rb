require 'test_helper'

class ConnectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get connects_index_url
    assert_response :success
  end

end
