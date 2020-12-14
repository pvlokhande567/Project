require 'test_helper'

class ResisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resi = resis(:one)
  end

  test "should get index" do
    get resis_url
    assert_response :success
  end

  test "should get new" do
    get new_resi_url
    assert_response :success
  end

  test "should create resi" do
    assert_difference('Resi.count') do
      post resis_url, params: { resi: { Confirm_Password: @resi.Confirm_Password, Email: @resi.Email, Fisrt_Name: @resi.Fisrt_Name, Last_Name: @resi.Last_Name, Password: @resi.Password } }
    end

    assert_redirected_to resi_url(Resi.last)
  end

  test "should show resi" do
    get resi_url(@resi)
    assert_response :success
  end

  test "should get edit" do
    get edit_resi_url(@resi)
    assert_response :success
  end

  test "should update resi" do
    patch resi_url(@resi), params: { resi: { Confirm_Password: @resi.Confirm_Password, Email: @resi.Email, Fisrt_Name: @resi.Fisrt_Name, Last_Name: @resi.Last_Name, Password: @resi.Password } }
    assert_redirected_to resi_url(@resi)
  end

  test "should destroy resi" do
    assert_difference('Resi.count', -1) do
      delete resi_url(@resi)
    end

    assert_redirected_to resis_url
  end
end
