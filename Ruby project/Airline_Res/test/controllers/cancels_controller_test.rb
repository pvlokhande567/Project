require 'test_helper'

class CancelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cancel = cancels(:one)
  end

  test "should get index" do
    get cancels_url
    assert_response :success
  end

  test "should get new" do
    get new_cancel_url
    assert_response :success
  end

  test "should create cancel" do
    assert_difference('Cancel.count') do
      post cancels_url, params: { cancel: { E_Tickit_No: @cancel.E_Tickit_No, integer: @cancel.integer } }
    end

    assert_redirected_to cancel_url(Cancel.last)
  end

  test "should show cancel" do
    get cancel_url(@cancel)
    assert_response :success
  end

  test "should get edit" do
    get edit_cancel_url(@cancel)
    assert_response :success
  end

  test "should update cancel" do
    patch cancel_url(@cancel), params: { cancel: { E_Tickit_No: @cancel.E_Tickit_No, integer: @cancel.integer } }
    assert_redirected_to cancel_url(@cancel)
  end

  test "should destroy cancel" do
    assert_difference('Cancel.count', -1) do
      delete cancel_url(@cancel)
    end

    assert_redirected_to cancels_url
  end
end
