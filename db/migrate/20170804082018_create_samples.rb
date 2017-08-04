class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.text :caption
      t.string :category
      t.string :alt
      t.references :krissi, foreign_key: true

      t.timestamps
    end
  end
end
