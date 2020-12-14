require 'test_helper'

class OnlinResControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onlin_re = onlin_res(:one)
  end

  test "should get index" do
    get onlin_res_url
    assert_response :success
  end

  test "should get new" do
    get new_onlin_re_url
    assert_response :success
  end

  test "should create onlin_re" do
    assert_difference('OnlinRe.count') do
      post onlin_res_url, params: { onlin_re: { Arrival_City: @onlin_re.Arrival_City, Departure_City: @onlin_re.Departure_City, Departure_Date: @onlin_re.Departure_Date, Journey_Type: @onlin_re.Journey_Type } }
    end

    assert_redirected_to onlin_re_url(OnlinRe.last)
  end

  test "should show onlin_re" do
    get onlin_re_url(@onlin_re)
    assert_response :success
  end

  test "should get edit" do
    get edit_onlin_re_url(@onlin_re)
    assert_response :success
  end

  test "should update onlin_re" do
    patch onlin_re_url(@onlin_re), params: { onlin_re: { Arrival_City: @onlin_re.Arrival_City, Departure_City: @onlin_re.Departure_City, Departure_Date: @onlin_re.Departure_Date, Journey_Type: @onlin_re.Journey_Type } }
    assert_redirected_to onlin_re_url(@onlin_re)
  end

  test "should destroy onlin_re" do
    assert_difference('OnlinRe.count', -1) do
      delete onlin_re_url(@onlin_re)
    end

    assert_redirected_to onlin_res_url
  end
end
