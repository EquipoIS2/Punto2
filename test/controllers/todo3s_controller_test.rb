require 'test_helper'

class Todo3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo3 = todo3s(:one)
  end

  test "should get index" do
    get todo3s_url
    assert_response :success
  end

  test "should get new" do
    get new_todo3_url
    assert_response :success
  end

  test "should create todo3" do
    assert_difference('Todo3.count') do
      post todo3s_url, params: { todo3: { content: @todo3.content, title: @todo3.title } }
    end

    assert_redirected_to todo3_url(Todo3.last)
  end

  test "should show todo3" do
    get todo3_url(@todo3)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo3_url(@todo3)
    assert_response :success
  end

  test "should update todo3" do
    patch todo3_url(@todo3), params: { todo3: { content: @todo3.content, title: @todo3.title } }
    assert_redirected_to todo3_url(@todo3)
  end

  test "should destroy todo3" do
    assert_difference('Todo3.count', -1) do
      delete todo3_url(@todo3)
    end

    assert_redirected_to todo3s_url
  end
end
