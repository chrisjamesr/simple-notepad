class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :created, :updated
end
