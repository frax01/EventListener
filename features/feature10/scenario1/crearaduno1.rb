Given("sono autenticato come Artista") do
    # Implementa il codice per autenticare l'utente come Artista
    # Ad esempio, puoi utilizzare Devise per effettuare il login dell'artista
    User.create(
        nome: 'Francesco',
        cognome: 'Martignoni',
        data_di_nascita: Date.parse('2000-01-01'),
        email: 'francescomartignoni1@gmail.com',
        password: 'Patatine9!',
        status: 'Artista'
    )
    visit '/users/sign_in'
    fill_in 'Email', with: 'francescomartignoni1@gmail.com'
    fill_in 'Password', with: 'Patatine9!'
    click_button 'Log in'
  end
  
  When("clicco in {string}") do |button_text|
    expect(current_path).to eq('/homepage')
    click_link button_text
  end
  
  Then("mi aspetto di essere sulla pagina di creazione di un nuovo raduno") do
    expect(current_path).to eq(new_raduno_path)
  end
  
  When("inserisco le informazioni del raduno") do
    # Implementa il codice per inserire le informazioni del raduno nel form
    # Ad esempio, puoi utilizzare il metodo `fill_in` per compilare i campi del form
    fill_in 'Descrizione', with: 'foto con i fan'
    fill_in 'Data', with: '10/07/2023'
    fill_in 'Orario', with: '21:30'
    fill_in 'Luogo', with: 'Piazza del popolo, Roma'
  end
  
  When("spingo su {string}") do |button_text|
    click_link_or_button button_text
  end
  
  Then("mi aspetto di essere sulla homepage") do
    expect(page).to have_current_path('/homepage')
  end