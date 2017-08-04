class AddAttachmentBioImageToKrissis < ActiveRecord::Migration[5.1]
  def self.up
    change_table :krissis do |t|
      t.attachment :bio_image
    end
  end

  def self.down
    remove_attachment :krissis, :bio_image
  end
end
