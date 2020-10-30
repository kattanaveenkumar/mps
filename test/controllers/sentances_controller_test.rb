require 'test_helper'

class SentancesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sentances_new_url
    assert_response :success
  end

  test "should get edit" do
    get sentances_edit_url
    assert_response :success
  end

  test "should get index" do
    get sentances_index_url
    assert_response :success
  end

end
