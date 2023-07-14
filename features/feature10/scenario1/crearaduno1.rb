# Scenario 1
Given("sono autenticato come Artista") do
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
    expect(current_path).to eq('/home')
  end
  
  When("clicco in {string}") do |button_text|
    click_link button_text
  end
  
  Then("mi aspetto di essere sulla pagina di creazione di un nuovo raduno") do
    expect(current_path).to eq(new_raduno_path)
  end
  
  When("inserisco le informazioni corrette del raduno") do
    fill_in 'Descrizione', with: 'foto con i fan'
    fill_in 'Data', with: '31/07/2023'
    fill_in 'Orario', with: '21:30'
    fill_in 'Luogo', with: 'Piazza del popolo, Roma'
  end
  
  When("clicco su {string}") do |button_text|
    click_link_or_button button_text
  end
  
  Then("mi aspetto di essere sulla homepage") do
    expect(current_path).to eq('/home')
  end