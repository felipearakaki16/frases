class CreateFrases < ActiveRecord::Migration[6.0]
  def change
    create_table :frases do |t|
      t.string :tag

      t.timestamps
    end
  end
end
