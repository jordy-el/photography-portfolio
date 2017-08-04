class AddAttachmentImageToParallaxes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :parallaxes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :parallaxes, :image
  end
end
