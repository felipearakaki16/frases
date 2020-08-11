class AddTagsToFrases < ActiveRecord::Migration[6.0]
  def change
    add_column :frases, :tags, :text
  end
end
