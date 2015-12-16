require 'test_helper'

class StatusRecordsControllerTest < ActionController::TestCase
  setup do
    @status_record = status_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_record" do
    assert_difference('StatusRecord.count') do
      post :create, status_record: { group_id: @status_record.group_id, user_id: @status_record.user_id }
    end

    assert_redirected_to status_record_path(assigns(:status_record))
  end

  test "should show status_record" do
    get :show, id: @status_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_record
    assert_response :success
  end

  test "should update status_record" do
    patch :update, id: @status_record, status_record: { group_id: @status_record.group_id, user_id: @status_record.user_id }
    assert_redirected_to status_record_path(assigns(:status_record))
  end

  test "should destroy status_record" do
    assert_difference('StatusRecord.count', -1) do
      delete :destroy, id: @status_record
    end

    assert_redirected_to status_records_path
  end
end
