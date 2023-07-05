Given("sono un utente registrato") do
    # Implement code to prepare a registered user state
    @user = User.create(email: 'francescomartignoni1@gmail.com', password: 'Patatine1!')
  end
  
  When("mi loggo con le mie credenziali del sito") do
    # Implement code to log in with site credentials
    visit '/users/sign_in'
    fill_in 'Email', with: 'francescomartignoni1@gmail.com'
    fill_in 'Password', with: 'Patatine1!'
    click_button 'Log in'
  end
  
  Then("devo essere reindirizzato alla homepage") do
    # Implement code to verify the redirection to the homepage
    expect(current_path).to eq('/homepage')
  end
  