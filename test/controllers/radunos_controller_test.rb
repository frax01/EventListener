require "test_helper"

class RadunosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raduno = radunos(:one)
  end

  test "should get index" do
    get radunos_url
    assert_response :success
  end

  test "should get new" do
    get new_raduno_url
    assert_response :success
  end

  test "should create raduno" do
    assert_difference("Raduno.count") do
      post radunos_url, params: { raduno: { data: @raduno.data, descrizione: @raduno.descrizione, idr: @raduno.idr, luogo: @raduno.luogo, nome_darte_organizzatore: @raduno.nome_darte_organizzatore, orario: @raduno.orario } }
    end

    assert_redirected_to raduno_url(Raduno.last)
  end

  test "should show raduno" do
    get raduno_url(@raduno)
    assert_response :success
  end

  test "should get edit" do
    get edit_raduno_url(@raduno)
    assert_response :success
  end

  test "should update raduno" do
    patch raduno_url(@raduno), params: { raduno: { data: @raduno.data, descrizione: @raduno.descrizione, idr: @raduno.idr, luogo: @raduno.luogo, nome_darte_organizzatore: @raduno.nome_darte_organizzatore, orario: @raduno.orario } }
    assert_redirected_to raduno_url(@raduno)
  end

  test "should destroy raduno" do
    assert_difference("Raduno.count", -1) do
      delete raduno_url(@raduno)
    end

    assert_redirected_to radunos_url
  end
end
