class AddImageToDocuments < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :documents, :image
  end

  def self.down
    remove_attachment :documents, :image
  end
end
