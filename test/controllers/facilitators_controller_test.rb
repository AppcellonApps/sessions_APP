require 'test_helper'

class FacilitatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facilitator = facilitators(:one)
  end

  test "should get index" do
    get facilitators_url, as: :json
    assert_response :success
  end

  test "should create facilitator" do
    assert_difference('Facilitator.count') do
      post facilitators_url, params: { facilitator: { email: @facilitator.email, gender: @facilitator.gender, name: @facilitator.name, session_id: @facilitator.session_id, tel_no: @facilitator.tel_no } }, as: :json
    end

    assert_response 201
  end

  test "should show facilitator" do
    get facilitator_url(@facilitator), as: :json
    assert_response :success
  end

  test "should update facilitator" do
    patch facilitator_url(@facilitator), params: { facilitator: { email: @facilitator.email, gender: @facilitator.gender, name: @facilitator.name, session_id: @facilitator.session_id, tel_no: @facilitator.tel_no } }, as: :json
    assert_response 200
  end

  test "should destroy facilitator" do
    assert_difference('Facilitator.count', -1) do
      delete facilitator_url(@facilitator), as: :json
    end

    assert_response 204
  end
end
