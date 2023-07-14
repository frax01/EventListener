# Scenario 2
Given("mi autentico come Artista") do
    @user=User.create(
      name: 'Francesco',
      email: 'francescomartignoni1@gmail.com',
      password: 'Patatine9!',
      status: 'Artista'
    )
    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end
  
  When("clicco {string}") do |button_text|
    expect(current_path).to eq('/home')
    click_link button_text
  end
  
  Then("mi aspetto di essere sulla pagina di creazione del un nuovo raduno") do
    expect(current_path).to eq(new_raduno_path)
  end
  
  When("inserisco le informazioni errate del raduno") do
    fill_in 'Descrizione', with: 'foto con i fan'
    fill_in 'Data', with: '01/07/2023'
    fill_in 'Orario', with: '21:30'
    fill_in 'Luogo', with: 'Piazza del popolo, Roma'
  end
  
  When("creo il raduno con {string}") do |button_text|
    click_link_or_button button_text
  end

  Then("vedo l'errore {string}") do |errore|
    expect(page).to have_content(errore)
  end  
  
  And("mi aspetto di rimanere sulla stessa pagina") do
    expect(page).to have_current_path(current_path)
  end