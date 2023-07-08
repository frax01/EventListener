Given("sono autenticato da Fan") do
    # Implementa il codice per autenticare l'utente come Artista
    # Ad esempio, puoi utilizzare Devise per effettuare il login dell'artista
    User.create(
        nome: 'Francesco',
        cognome: 'Martignoni',
        data_di_nascita: Date.parse('2000-01-01'),
        email: 'francescomartignoni1@gmail.com',
        password: 'Patatine9!',
        status: 'Fan'
    )
    visit '/users/sign_in'
    fill_in 'Email', with: 'francescomartignoni1@gmail.com'
    fill_in 'Password', with: 'Patatine9!'
    click_button 'Log in'
    expect(current_path).to eq('/homepage')
  end
  
  Then("mi aspetto di vedere il bottone {string} non selezionabile") do |button_text|
    expect(page).to have_button(button_text, disabled: true)
  end