require 'rails_helper'

RSpec.describe 'Landing Page' do
  it 'shows the title of the application' do
    visit '/'

    expect(page).to have_content('Welcome to the Potluck Party Creating App!')
  end

  it 'has a button to create a new user' do
    visit '/'

    expect(page).to have_button('Register')

    click_button 'Register'
    expect(current_path).to eq('/users/new')
  end
end
