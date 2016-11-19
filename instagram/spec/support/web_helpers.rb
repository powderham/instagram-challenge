module WebHelpers
  def write_post
    visit '/posts/new'
    fill_in 'caption_text_field', with: "Test post"
    submit_form
  end
end
