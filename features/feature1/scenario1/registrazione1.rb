# Scenario 1
Given("che mi trovo sulla pagina di registrazione") do
    # Implementazione per verificare che ti trovi sulla pagina di registrazione
    visit '/users/sign_up'
  end
  
  And("inserisco il mio indirizzo email {string}") do |email|
    # Implementazione per inserire l'indirizzo email nel campo di input
    fill_in 'Email', with: email
  end
  
  And("inserisco una password sicura {string}") do |password|
    # Implementazione per inserire la password nel campo di input
    fill_in 'Password', with: password
  end
  
  And("confermo la password {string}") do |password_conferma|
    # Implementazione per confermare la password nel campo di input
    fill_in 'Password confirmation', with: password_conferma
  end
  
  And("clicco sul pulsante {string}") do |nome_pulsante|
    # Implementazione per cliccare sul pulsante corrispondente
    click_button nome_pulsante
  end
  
  And("sono reindirizzato alla pagina degli utenti") do
    # Implementazione per verificare il reindirizzamento alla pagina di accesso
    expect(current_path).to eq('/utentes')
  end