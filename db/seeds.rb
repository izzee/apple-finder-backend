# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'json'

folders = Folder.create([{name: 'Documents'}, {name: 'Pictures'}, {name: 'Music'}])

def createDocs(folder)
  (1...20).each do |i|
    doc = Document.create(name: folder.name + i.to_s, folder: folder)
    puts doc
  end
end

folders.each do |folder|
  puts folder.name
  createDocs(folder)
end
