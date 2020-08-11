class AddQuoteToFrases < ActiveRecord::Migration[6.0]
  def change
    add_column :frases, :quote, :text
  end
end
