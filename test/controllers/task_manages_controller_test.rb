require 'test_helper'

class TaskManagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get task_manages_home_url
    assert_response :success
  end

  test "should get task_list" do
    get task_manages_task_list_url
    assert_response :success
  end

  test "should get new_task" do
    get task_manages_new_task_url
    assert_response :success
  end

end
