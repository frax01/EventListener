# Scenario 1
Given("un Artista entra nel sito e crea 3 raduni") do
    @user=User.create(
      name: 'Francesco',
      uid: 'frax',
      email: 'francescomartignoni@gmail.com',
      password: 'Patatine9!',
      status: 'Fan',
      is_artist: true
    )
    @raduno1=Raduno.create!(descrizione: "foto con i fan", data: "30/07/2023", orario: "23:30", luogo: "Via del corso, Roma", email: "francescomartignoni1@gmail.com", user_id: 1, nome_darte_organizzatore: "frax")
    @raduno2=Raduno.create!(descrizione: "video nuovo album", data: "10/09/2023", orario: "22:30", luogo: "Piazza del Popolo, Roma", email: "francescomartignoni1@gmail.com", user_id: 1, nome_darte_organizzatore: "frax")
    @raduno3=Raduno.create!(descrizione: "canzoni inedite", data: "21/07/2023", orario: "21:00", luogo: "Piazza di Spagna, Roma", email: "francescomartignoni1@gmail.com", user_id: 1, nome_darte_organizzatore: "frax")
  end
  
  When("entro nel sito come Fan") do
    @user=User.create(
      name: 'Francesco',
      email: 'francesco@gmail.com',
      password: 'Patatine9!',
      status: 'Fan',
      artist0: 'frax'
    )
    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    expect(current_path).to eq('/home')
  end
  
  And("clicco {string} per iscrivermi al raduno con descrizione {string}") do |button_text, descrizione_raduno|
    @raduno=Raduno.find_by(descrizione: descrizione_raduno)
    button=find("#partecipa_#{@raduno.id}")
    button.click
  end
  
  Then("vengo mandato alla pagina di conferma") do
    expect(page).to have_current_path(new_event_path(id_raduno: @raduno.id))
  end

  And("confermo l'iscrizione su {string}") do |iscriviti|
    click_button iscriviti
  end

  Then("vengo riportato alla homepage") do
    expect(current_path).to eq('/home')
  end  

  And("mi aspetto di vedere il raduno a cui partecipo") do
    expect(page).to have_content("Artista: #{@raduno3.nome_darte_organizzatore}")
    expect(page).to have_content("Descrizione: #{@raduno3.descrizione}")
    expect(page).to have_content("Data: #{@raduno3.data}")
    expect(page).to have_content("Orario: #{@raduno3.orario.strftime("%H:%M")}")
    expect(page).to have_content("Luogo: #{@raduno3.luogo}")
  end