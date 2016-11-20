require 'rails_helper'

RSpec.feature "Edit posts", type: :feature do
  scenario "user can edit posts" do
    sign_up
    write_post
    visit '/posts'
    puts page.body
    find('a[id="edit_1"]').click
    fill_in 'caption_text_field', with: "Test post 2"
    submit_form
    expect(page).to have_content "Test post 2"
  end
end
