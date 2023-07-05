# Scenario1
Given("sono loggato") do
    # Perform the necessary steps to log in a user
    # For example, you can use Devise helpers or create a user session manually
    user = User.create(email: 'francescomartignoni1@gmail.com', password: 'patatine1')
  end
  
  When("clicco Logout") do
    # Aggiungi qui il codice che simula il clic sul pulsante di logout
    click_link('Logout') # Assicurati che 'Logout' corrisponda all'etichetta effettiva del link nel tuo sito
  end
  
  Then("dovrei essere rimandato alla pagina di login iniziale") do
    expect(current_path).to eq('/users/sign_in')
  end