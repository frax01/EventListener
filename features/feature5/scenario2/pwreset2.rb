Given("sono sul login") do
    # Implementazione per verificare che ti trovi sulla pagina di login
    visit '/users/sign_in'
  end
  
  When("click on {string}") do |link_name|
    # Implementazione per cliccare sul link corrispondente
    click_link link_name
  end
  
  And("vengo mandato alla pagina di reset") do
    # Implementazione per verificare il reindirizzamento alla pagina di reset
    expect(current_path).to eq('/users/password/new')
  end
  
  And("inserisco una mail non esistente {string}") do |email|
    # Implementazione per inserire l'email nel campo di input
    fill_in 'Email', with: email
  end
  
  And("click {string}") do |button_name|
    # Implementazione per cliccare sul pulsante corrispondente
    click_button button_name
  end
  
  Then("visualizzo l'errore {string}") do |error_message|
    # Implementazione per verificare la presenza dell'errore visualizzato
    expect(page).to have_content(error_message)
  end
  