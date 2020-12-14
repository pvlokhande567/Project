require 'test_helper'

class ResverationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resveration = resverations(:one)
  end

  test "should get index" do
    get resverations_url
    assert_response :success
  end

  test "should get new" do
    get new_resveration_url
    assert_response :success
  end

  test "should create resveration" do
    assert_difference('Resveration.count') do
      post resverations_url, params: { resveration: { Date_Of_Birth: @resveration.Date_Of_Birth, First_Name: @resveration.First_Name, Last_Name: @resveration.Last_Name, Seat_Request: @resveration.Seat_Request } }
    end

    assert_redirected_to resveration_url(Resveration.last)
  end

  test "should show resveration" do
    get resveration_url(@resveration)
    assert_response :success
  end

  test "should get edit" do
    get edit_resveration_url(@resveration)
    assert_response :success
  end

  test "should update resveration" do
    patch resveration_url(@resveration), params: { resveration: { Date_Of_Birth: @resveration.Date_Of_Birth, First_Name: @resveration.First_Name, Last_Name: @resveration.Last_Name, Seat_Request: @resveration.Seat_Request } }
    assert_redirected_to resveration_url(@resveration)
  end

  test "should destroy resveration" do
    assert_difference('Resveration.count', -1) do
      delete resveration_url(@resveration)
    end

    assert_redirected_to resverations_url
  end
end
