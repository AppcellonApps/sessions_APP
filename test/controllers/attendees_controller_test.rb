require 'test_helper'

class AttendeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attendee = attendees(:one)
  end

  test "should get index" do
    get attendees_url, as: :json
    assert_response :success
  end

  test "should create attendee" do
    assert_difference('Attendee.count') do
      post attendees_url, params: { attendee: { email: @attendee.email, gender: @attendee.gender, name: @attendee.name, programming_lang: @attendee.programming_lang, session_id: @attendee.session_id, tel_no: @attendee.tel_no } }, as: :json
    end

    assert_response 201
  end

  test "should show attendee" do
    get attendee_url(@attendee), as: :json
    assert_response :success
  end

  test "should update attendee" do
    patch attendee_url(@attendee), params: { attendee: { email: @attendee.email, gender: @attendee.gender, name: @attendee.name, programming_lang: @attendee.programming_lang, session_id: @attendee.session_id, tel_no: @attendee.tel_no } }, as: :json
    assert_response 200
  end

  test "should destroy attendee" do
    assert_difference('Attendee.count', -1) do
      delete attendee_url(@attendee), as: :json
    end

    assert_response 204
  end
end
