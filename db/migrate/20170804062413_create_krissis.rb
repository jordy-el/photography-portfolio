class CreateKrissis < ActiveRecord::Migration[5.1]
  def change
    create_table :krissis do |t|
      t.text :linkedin
      t.text :facebook
      t.text :instagram
      t.text :contact_body
      t.text :bio_body

      t.timestamps
    end
  end
end
