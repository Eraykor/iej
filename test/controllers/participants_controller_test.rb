require 'test_helper'

class ParticipantsControllerTest < ActionController::TestCase
  setup do
    @participant = participants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participant" do
    assert_difference('Participant.count') do
      post :create, participant: { adress: @participant.adress, affiliation_process: @participant.affiliation_process, birth_date: @participant.birth_date, city: @participant.city, entry_process: @participant.entry_process, entry_solution: @participant.entry_solution, expected_process: @participant.expected_process, first_name: @participant.first_name, id_number: @participant.id_number, last_name: @participant.last_name, mobile: @participant.mobile, output_solution: @participant.output_solution, phone: @participant.phone, place_of_birth: @participant.place_of_birth, zip_code: @participant.zip_code }
    end

    assert_redirected_to participant_path(assigns(:participant))
  end

  test "should show participant" do
    get :show, id: @participant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participant
    assert_response :success
  end

  test "should update participant" do
    patch :update, id: @participant, participant: { adress: @participant.adress, affiliation_process: @participant.affiliation_process, birth_date: @participant.birth_date, city: @participant.city, entry_process: @participant.entry_process, entry_solution: @participant.entry_solution, expected_process: @participant.expected_process, first_name: @participant.first_name, id_number: @participant.id_number, last_name: @participant.last_name, mobile: @participant.mobile, output_solution: @participant.output_solution, phone: @participant.phone, place_of_birth: @participant.place_of_birth, zip_code: @participant.zip_code }
    assert_redirected_to participant_path(assigns(:participant))
  end

  test "should destroy participant" do
    assert_difference('Participant.count', -1) do
      delete :destroy, id: @participant
    end

    assert_redirected_to participants_path
  end
end
