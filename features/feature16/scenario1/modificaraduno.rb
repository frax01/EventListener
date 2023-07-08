Given("sono un utente loggato sulla homepage") do
  # Logica per accedere come utente loggato sulla homepage
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
  expect(current_path).to eq('/homepage')
end

And("vado su {string}") do |button|
    click_link button
    expect(current_path).to eq('/radunos/new')
end

And("creo un raduno cliccando su {string}") do |button|
  # Logica per creare un raduno con i dettagli forniti nella tabella
  fill_in 'Descrizione', with: 'video album'
  fill_in 'Data', with: '10/07/2023'
  fill_in 'Orario', with: '21:00'
  fill_in 'Luogo', with: 'Piazza di Spagna'
  click_button button
  expect(current_path).to eq('/homepage')
end

When("clicco sul pulsante {string} per il raduno con descrizione {string}") do |button_text, description|
  # Logica per cliccare sul pulsante di modifica corrispondente al raduno con la descrizione fornita
  raduno=Raduno.find_by(descrizione: description)
  click_link("#{button_text}")
end

Then("vengo reindirizzato alla pagina di modifica del raduno") do
  # Logica per verificare il reindirizzamento alla pagina di modifica del raduno
  expect(current_path).to eq(edit_raduno_path(Raduno.last))
end

Then("vedo i campi del raduno precompilati con i seguenti dettagli") do |table|
  # Logica per verificare che i campi del raduno siano precompilati con i dettagli forniti nella tabella
  raduno_details = table.hashes.first
  expect(find_field('Descrizione').value).to eq(raduno_details['descrizione'])
  expect(find_field('Data').value).to eq(raduno_details['data'])
  expect(find_field('Orario').value).to eq(raduno_details['orario'])
  expect(find_field('Luogo').value).to eq(raduno_details['luogo'])
end

When("compilo i nuovi dettagli del raduno:") do |table|
  # Logica per compilare i nuovi dettagli del raduno con i valori forniti nella tabella
  raduno_details = table.hashes.first
  fill_in 'Descrizione', with: raduno_details['descrizione']
  fill_in 'Data', with: raduno_details['data']
  fill_in 'Orario', with: raduno_details['orario']
  fill_in 'Luogo', with: raduno_details['luogo']
end

And("spingo {string}") do |button_text|
  # Logica per cliccare sul pulsante corrispondente al testo fornito
  click_button button_text
end

Then("vengo reindirizzato alla homepage") do
  # Logica per verificare il reindirizzamento alla homepage
  expect(current_path).to eq('/homepage')
end

Then("vedo il raduno modificato con i dettagli aggiornati:") do |table|
  # Logica per verificare che il raduno sia stato modificato con i dettagli aggiornati forniti nella tabella
  raduno_details = table.hashes.first
  expect(page).to have_content(raduno_details['descrizione'])
  expect(page).to have_content(raduno_details['data'])
  expect(page).to have_content(raduno_details['orario'])
  expect(page).to have_content(raduno_details['luogo'])
end
