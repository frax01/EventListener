# Scenario3
Given("mi trovo sulla pagina di registrazione") do
    visit new_user_registration_path
  end
  
  Given("esiste già un utente con l'indirizzo email {string}") do |email|
    # Create a user with the provided email address in the database
    User.create(email: email, password: 'password')
  end
  
  When("inserisco l'indirizzo email {string}") do |email|
    fill_in 'Email', with: email
  end
  
  When("inserisco una password che è sicura {string}") do |password|
    fill_in 'Password', with: password
  end
  
  When("confermo la password che è {string}") do |password_confirmation|
    fill_in 'Password confirmation', with: password_confirmation
  end
  
  When("clicco sul bottone {string}") do |button_text|
    click_button button_text
  end
  
  Then("visualizzo un messaggio di errore sull'indirizzo email") do
    expect(page).to have_content("Email has already been taken")
  end
  
  Then("rimango li sulla pagina di registrazione") do
    expect(current_path).to eq('/users')
  end
  