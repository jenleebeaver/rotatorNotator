class RecordingSerializer < ActiveModel::Serializer
  has_many :notes
  attributes :id, :title, :melody, :created_at
end
