# Scenario 4
Given("mi autentico come Fan") do
    @user=User.create(
      name: 'Francesco',
      email: 'francescomartignoni1@gmail.com',
      password: 'Patatine9!',
      status: 'Fan'
    )
    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  When("click on {string}") do |button_text|
    expect(current_path).to eq('/home')
    click_link button_text
  end

  Then("resto sulla homepage") do
    expect(page).to have_current_path(current_path)
  end