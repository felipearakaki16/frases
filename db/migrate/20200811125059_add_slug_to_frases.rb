class AddSlugToFrases < ActiveRecord::Migration[6.0]
  def change
    add_column :frases, :slug, :string
    add_index :frases, :slug, unique: true
  end
end
