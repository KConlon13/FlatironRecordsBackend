class LabelSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :artists
end
