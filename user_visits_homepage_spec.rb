require "rails_helper"

feature "User visits homepage" do
  scenario "successfully"do 
    visit root_path

    expect(page).to have css 'h1', text: 'Todos'
  end
end