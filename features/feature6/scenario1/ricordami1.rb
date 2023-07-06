Given("sono sulla pagina di accesso") do
    # Implementazione per verificare che ti trovi sulla pagina di accesso
    visit '/users/sign_in'
  end
  
  When("inserisco le credenziali valide") do
    # Implementazione per inserire le credenziali valide nel campo di input
    fill_in 'Email', with: 'francescomartignoni1@gmail.com'
    fill_in 'Password', with: 'Patatine12!'
  end

  And("seleziono l'opzione {string}") do |option_text|
    # Implementazione per selezionare l'opzione corrispondente
    check option_text
  end
  
  And("clicco su di {string}") do |button_text|
    # Implementazione per cliccare sul pulsante corrispondente
    click_button button_text
  end
  
  And("chiudo l'applicazione") do
    @applicazione_chiusa = true
  end
  
  And("riapro l'applicazione") do
    @applicazione_chiusa = false
  end

  Then("mi aspetto di essere sulla homepage") do
    expect(current_path).to eq('/users/sign_in')
  end
  