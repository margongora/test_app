class AddAttrsToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :author, :string
    add_column :books, :price, :numeric
    add_column :books, :date_published, :date
  end
end
