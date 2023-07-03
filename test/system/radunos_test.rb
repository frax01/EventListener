require "application_system_test_case"

class RadunosTest < ApplicationSystemTestCase
  setup do
    @raduno = radunos(:one)
  end

  test "visiting the index" do
    visit radunos_url
    assert_selector "h1", text: "Radunos"
  end

  test "should create raduno" do
    visit radunos_url
    click_on "New raduno"

    fill_in "Data", with: @raduno.data
    fill_in "Descrizione", with: @raduno.descrizione
    fill_in "Idr", with: @raduno.idr
    fill_in "Luogo", with: @raduno.luogo
    fill_in "Nome darte organizzatore", with: @raduno.nome_darte_organizzatore
    fill_in "Orario", with: @raduno.orario
    click_on "Create Raduno"

    assert_text "Raduno was successfully created"
    click_on "Back"
  end

  test "should update Raduno" do
    visit raduno_url(@raduno)
    click_on "Edit this raduno", match: :first

    fill_in "Data", with: @raduno.data
    fill_in "Descrizione", with: @raduno.descrizione
    fill_in "Idr", with: @raduno.idr
    fill_in "Luogo", with: @raduno.luogo
    fill_in "Nome darte organizzatore", with: @raduno.nome_darte_organizzatore
    fill_in "Orario", with: @raduno.orario
    click_on "Update Raduno"

    assert_text "Raduno was successfully updated"
    click_on "Back"
  end

  test "should destroy Raduno" do
    visit raduno_url(@raduno)
    click_on "Destroy this raduno", match: :first

    assert_text "Raduno was successfully destroyed"
  end
end
