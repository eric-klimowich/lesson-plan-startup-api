class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :slug
end
