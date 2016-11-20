module WebHelpers
  def write_post
    visit '/posts/new'
    fill_in 'caption_text_field', with: "Test post"
    submit_form
  end

  def sign_up
    visit('/')
    click_link('Sign up')
    fill_in('Email', with: 'test@example.com')
    fill_in('Password', with: 'testtest')
    fill_in('Password confirmation', with: 'testtest')
    click_button('Sign up')
  end
end
