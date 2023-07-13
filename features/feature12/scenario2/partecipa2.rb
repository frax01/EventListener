# Scenario 2
Given("un Artista entra nel sito e crea tre raduni") do
    @raduno1=Raduno.create!(descrizione: "foto con i fan", data: "30/07/2023", orario: "23:30", luogo: "Via del corso, Roma", email: "francescomartignoni1@gmail.com")
    @raduno2=Raduno.create!(descrizione: "video nuovo album", data: "10/09/2023", orario: "22:30", luogo: "Piazza del Popolo, Roma", email: "francescomartignoni1@gmail.com")
    @raduno3=Raduno.create!(descrizione: "canzoni inedite", data: "21/07/2023", orario: "21:00", luogo: "Piazza di Spagna, Roma", email: "francescomartignoni1@gmail.com")
  end
  
  When("entro nel sito da Fan") do
    @user=User.create(
      name: 'Francesco',
      email: 'francesco@gmail.com',
      password: 'Patatine9!',
      status: 'Fan'
    )
    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    expect(current_path).to eq('/home')
  end
  
  And("clicco {string} per iscrivermi al raduno che ha descrizione {string}") do |button_text, descrizione_raduno|
    @raduno=Raduno.find_by(descrizione: descrizione_raduno)
    button=find("#partecipa_#{@raduno.id}")
    button.click
  end
  
  Then("vengo mandato alla pagina di iscrizione") do
    expect(page).to have_current_path(new_event_path(id_raduno: @raduno.id))
  end

  And("confermo l'iscrizione cliccando su {string}") do |iscriviti|
    click_button iscriviti
  end

  Then("vengo riportato sulla homepage") do
    expect(current_path).to eq('/home')
  end  

  And("vedo il raduno a cui partecipo") do
    expect(page).to have_content("Artista:#{@raduno.nome_darte_organizzatore}")
    expect(page).to have_content("Descrizione: #{@raduno.descrizione}")
    expect(page).to have_content("Data: #{@raduno.data}")
    expect(page).to have_content("Orario: #{@raduno.orario.strftime("%H:%M")}")
    expect(page).to have_content("Luogo: #{@raduno.luogo}")
  end

  And("provo ad iscrivermi di nuovo cliccando su Partecipa allo stesso Raduno con descrizione {string}") do |descrizione_raduno|
    link=find("#partecipa_#{@raduno.id}")
    link.click
  end

  Then("non accade niente e rimango sulla homepage") do
    expect(current_path).to eq('/home')
  end