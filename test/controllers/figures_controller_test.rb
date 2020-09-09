require 'test_helper'

class FiguresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get figures_index_url
    assert_response :success
  end

  test "should get new" do
    get figures_new_url
    assert_response :success
  end

  test "should get create" do
    get figures_create_url
    assert_response :success
  end

  test "should get edit" do
    get figures_edit_url
    assert_response :success
  end

  test "should get update" do
    get figures_update_url
    assert_response :success
  end

end
