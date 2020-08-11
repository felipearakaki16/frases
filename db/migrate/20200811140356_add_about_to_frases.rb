class AddAboutToFrases < ActiveRecord::Migration[6.0]
  def change
    add_column :frases, :about, :string
  end
end
