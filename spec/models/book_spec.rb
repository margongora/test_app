require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid with a title' do
    book = Book.new(title: 'Moby Dick')
    expect(book).to be_valid
  end

  it 'is not valid with empty title' do 
    book = Book.new
    expect(book).to_not be_valid
  end
end
