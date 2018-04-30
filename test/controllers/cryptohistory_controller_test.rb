require 'test_helper'

class CryptohistoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cryptohistory_index_url
    assert_response :success
  end

end
