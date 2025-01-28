require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid with a title, author, date published, and price' do
    book = Book.new(title: 'Moby Dick', author: 'Herman Melville', date_published: Date.new(1851), price: 20)
    expect(book).to be_valid
  end

  it 'is not valid with empty title' do 
    book = Book.new(author: 'Herman Melville', date_published: Date.new(1851), price: 20)
    expect(book).to_not be_valid
  end

  it 'is invalid without an author' do
    book = Book.new(title: 'Moby Dick', date_published: Date.new(1851), price: 20)
    expect(book).to_not be_valid
  end

  it 'is invalid without a date' do
    book = Book.new(title: 'Moby Dick', author: 'Herman Melville', price: 20)
    expect(book).to_not be_valid
  end

  it 'is invalid without a price' do
    book = Book.new(title: 'Moby Dick', author: 'Herman Melville', date_published: Date.new(1851))
    expect(book).to_not be_valid
  end

end
