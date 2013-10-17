require 'spec_helper'

feature 'Basic navigation' do
  scenario 'User can access homepage' do
    visit root_path
    expect(page).to have_title 'Pair With Me'
    expect(page).to have_css 'h1', text: 'Find A Pair'
  end
end