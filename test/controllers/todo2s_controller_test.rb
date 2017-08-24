require 'test_helper'

class Todo2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo2 = todo2s(:one)
  end

  test "should get index" do
    get todo2s_url
    assert_response :success
  end

  test "should get new" do
    get new_todo2_url
    assert_response :success
  end

  test "should create todo2" do
    assert_difference('Todo2.count') do
      post todo2s_url, params: { todo2: { content: @todo2.content, title: @todo2.title } }
    end

    assert_redirected_to todo2_url(Todo2.last)
  end

  test "should show todo2" do
    get todo2_url(@todo2)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo2_url(@todo2)
    assert_response :success
  end

  test "should update todo2" do
    patch todo2_url(@todo2), params: { todo2: { content: @todo2.content, title: @todo2.title } }
    assert_redirected_to todo2_url(@todo2)
  end

  test "should destroy todo2" do
    assert_difference('Todo2.count', -1) do
      delete todo2_url(@todo2)
    end

    assert_redirected_to todo2s_url
  end
end
