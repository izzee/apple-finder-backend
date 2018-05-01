class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :name
      t.string :file_url
      t.string :filetype
      t.integer :size
      t.belongs_to :sled, foreign_key: true
      t.timestamps
    end
  end
end
