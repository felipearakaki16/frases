class AddAuthorToFrases < ActiveRecord::Migration[6.0]
  def change
    add_column :frases, :author, :string
  end
end
