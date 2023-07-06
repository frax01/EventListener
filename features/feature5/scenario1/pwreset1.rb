# Scenario 1

Given("sono sulla pagina di login") do
    visit new_user_session_path
  end
  
  When("clicco sul link {string}") do |link_text|
    click_link link_text
  end
  
  And("vengo reindirizzato alla pagina di reset") do
    expect(current_path).to eq(new_user_password_path)
  end
  
  And("inserisco l'email {string}") do |email|
    fill_in 'Email', with: email
  end
  
  And("clicco su quel pulsante {string}") do |button_text|
    click_button button_text
  end
  
  And("clicco e vengo reindirizzato al link nella email di reset password") do

    log_output = `tail -n 20 log/development.log`
    reset_password_link = log_output.match(/<a href="([^"]+)">Change my password<\/a>/)&.captures&.first
    visit reset_password_link
  end
  
  And("inserisco la nuova password corretta {string}") do |password|
    fill_in 'New password', with: password
  end
  
  And("confermo la nuova password corretta {string}") do |password_confirmation|
    fill_in 'Confirm new password', with: password_confirmation
  end
  
  And("clicco {string}") do |button_text|
    click_button button_text
  end
  
  Then("sono sulla homepage") do
    expect(current_path).to eq('/users/password')
  end