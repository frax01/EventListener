Given("mi sono già registrato") do
  # Implement code to prepare a registered user state
  @user = User.create(email: 'francescomartignoni1@gmail.com', password: 'Patatine9!')
end

When("mi autentico come Artista") do
    visit '/users/sign_in'
    fill_in 'Email', with: 'francescomartignoni1@gmail.com'
    fill_in 'Password', with: 'Patatine9!'
    click_button 'Log in'
  end

  And("accedo all'applicazione e avevo già creato alcuni raduni") do
    expect(current_path).to eq('/homepage')
  end

  Then("mi aspetto di vedere i raduni creati nella sezione corretta") do
    expect(page).to have_content("Nessun raduno presente")
  end