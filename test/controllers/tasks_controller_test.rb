require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get tasks_input_url
    assert_response :success
  end

end
