require 'rails_helper'

RSpec.describe "Books", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'creates a valid book' do
    visit new_book_path

    fill_in 'book_title', with: 'Moby Dick'
    fill_in 'book_author', with: 'Herman Melville'
    select '1851', from: 'book_date_published'
    fill_in 'book_price', with: 20

    click_button 'Create Book'

    expect(page).to have_content('Book was successfully created.')
  end 

  it 'fails to create a book with no title' do
    visit new_book_path

    fill_in 'book_author', with: 'Herman Melville'
    select '1851', from: 'book_date_published'
    fill_in 'book_price', with: 20

    click_button 'Create Book'

    expect(page).to have_content('Title can\'t be blank')
  end

  it 'fails to create a book without author' do
    visit new_book_path

    fill_in 'book_title', with: 'Moby Dick'
    select '1851', from: 'book_date_published'
    fill_in 'book_price', with: 20

    click_button 'Create Book'

    expect(page).to have_content('Author can\'t be blank')
  end

  # Having the default will make it so there is always a date given from the UI
  # it 'fails to create a book without date' do
  #   visit new_book_path

  #   fill_in 'book_title', with: 'Moby Dick'
  #   fill_in 'book_author', with: 'Herman Melville'
  #   fill_in 'book_price', with: 20

  #   click_button 'Create Book'

  #   expect(page).to have_content('Date published can\'t be blank')
  # end

  it 'fails to create a book without price' do
    visit new_book_path

    fill_in 'book_title', with: 'Moby Dick'
    fill_in 'book_author', with: 'Herman Melville'
    select '1851', from: 'book_date_published'

    click_button 'Create Book'

    expect(page).to have_content('Price can\'t be blank')
  end

end
