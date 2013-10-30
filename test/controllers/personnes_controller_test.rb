require 'test_helper'

class PersonnesControllerTest < ActionController::TestCase
  setup do
    @personne = personnes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personnes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personne" do
    assert_difference('Personne.count') do
      post :create, personne: { additionnalInsurance: @personne.additionnalInsurance, address: @personne.address, city: @personne.city, civilStatus: @personne.civilStatus, co: @personne.co, dateOfBirth: @personne.dateOfBirth, email: @personne.email, familyName: @personne.familyName, firstName: @personne.firstName, illnessInsurance: @personne.illnessInsurance, maiderName: @personne.maiderName, nationality: @personne.nationality, privatePhone: @personne.privatePhone, profPhone: @personne.profPhone, zipCode: @personne.zipCode }
    end

    assert_redirected_to personne_path(assigns(:personne))
  end

  test "should show personne" do
    get :show, id: @personne
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personne
    assert_response :success
  end

  test "should update personne" do
    patch :update, id: @personne, personne: { additionnalInsurance: @personne.additionnalInsurance, address: @personne.address, city: @personne.city, civilStatus: @personne.civilStatus, co: @personne.co, dateOfBirth: @personne.dateOfBirth, email: @personne.email, familyName: @personne.familyName, firstName: @personne.firstName, illnessInsurance: @personne.illnessInsurance, maiderName: @personne.maiderName, nationality: @personne.nationality, privatePhone: @personne.privatePhone, profPhone: @personne.profPhone, zipCode: @personne.zipCode }
    assert_redirected_to personne_path(assigns(:personne))
  end

  test "should destroy personne" do
    assert_difference('Personne.count', -1) do
      delete :destroy, id: @personne
    end

    assert_redirected_to personnes_path
  end
end
