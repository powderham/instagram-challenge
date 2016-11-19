require 'rails_helper'

RSpec.feature "Write Posts", type: :feature do
  scenario "Create test" do
    visit '/posts/new'
    fill_in 'caption_text_field', with: "Test post"
    submit_form
    expect(page).to have_content "Test post"
  end
end
