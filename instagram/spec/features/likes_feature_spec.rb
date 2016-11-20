require 'rails_helper'

RSpec.feature 'Liking posts' do
  scenario 'A user can like a post' do
    sign_up
    write_post
    visit "/"
    find('a[id="like_1"]').click
    expect(page).to have_content "1 like"
  end

end
