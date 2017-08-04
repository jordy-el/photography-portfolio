class AddAttachmentImageToSamples < ActiveRecord::Migration[5.1]
  def self.up
    change_table :samples do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :samples, :image
  end
end
