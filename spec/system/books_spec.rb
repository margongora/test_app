require 'rails_helper'

RSpec.describe "Books", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'creates a new book with a title' do
    visit new_book_path

    fill_in 'book_title', with: 'Moby Dick'
    click_button 'Create Book'

    expect(page).to have_content('Book was successfully created.')
  end 

  it 'fails to create a book with no title' do
    visit new_book_path

    click_button 'Create Book'

    expect(page).to have_content('Title can\'t be blank')
  end
end
