class CreateParallaxes < ActiveRecord::Migration[5.1]
  def change
    create_table :parallaxes do |t|
      t.references :krissi, foreign_key: true

      t.timestamps
    end
  end
end
