# Scenario1
  Given("sono registrato") do
    # Implement code to prepare a registered user state
    @user = User.create(email: 'francescomartignoni1@gmail.com', password: 'Patatine1!')
  end

  When("mi loggo con le mie credenziali") do
    # Implement code to log in with site credentials
    visit '/users/sign_in'
    fill_in 'Email', with: 'francescomartignoni1@gmail.com'
    fill_in 'Password', with: 'Patatine1!'
    click_button 'Log in'
  end

  And("mi trovo sulla homepage") do
    # Implement code to verify the redirection to the homepage
    expect(current_path).to eq('/homepage')
  end
  
  And("clicco Logout") do
    # Aggiungi qui il codice che simula il clic sul pulsante di logout
    click_link('Logout') # Assicurati che 'Logout' corrisponda all'etichetta effettiva del link nel tuo sito
  end
  
  Then("dovrei essere rimandato alla pagina di login iniziale") do
    expect(current_path).to eq('/users/sign_in')
  end