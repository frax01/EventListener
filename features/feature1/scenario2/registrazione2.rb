# Scenario 2
Given("sono sulla pagina di registrazione") do
    # Implementazione per verificare che ti trovi sulla pagina di registrazione
    visit '/users/sign_up'
  end

  And("inserisco il nome {string}") do |nome|
    # Implementazione per inserire l'indirizzo email nel campo di input
    fill_in 'Nome', with: nome
  end

  And("inserisco il cognome {string}") do |cognome|
    # Implementazione per inserire l'indirizzo email nel campo di input
    fill_in 'Cognome', with: cognome
  end

  And("inserisco la data di nascita {string}") do |data_di_nascita|
    # Implementazione per inserire l'indirizzo email nel campo di input
    fill_in 'Data di nascita', with: data_di_nascita
  end
  
  And("inserisco la mia email {string}") do |email|
    # Implementazione per inserire l'indirizzo email nel campo di input
    fill_in 'Email', with: email
  end
  
  And("metto una password non sicura {string}") do |password|
    # Implementazione per inserire la password nel campo di input
    fill_in 'Password', with: password
  end
  
  And("confermo questa password {string}") do |password_conferma|
    # Implementazione per confermare la password nel campo di input
    fill_in 'Password confirmation', with: password_conferma
  end
  
  And("clicco su {string}") do |nome_pulsante|
    # Implementazione per cliccare sul pulsante corrispondente
    click_button nome_pulsante
  end
  
  And("rimango nella pagina di registrazione") do
    # Implementazione per verificare il reindirizzamento alla pagina di accesso
    expect(current_path).to eq('/users')
  end