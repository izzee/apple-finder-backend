class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :file_url, :filetype, :size, :folder
end
