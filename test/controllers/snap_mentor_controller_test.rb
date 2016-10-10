require 'test_helper'

class SnapMentorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get snap_mentor_index_url
    assert_response :success
  end

end
