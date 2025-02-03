class EnsureDateIsADate < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :date_published, :date
  end
end
