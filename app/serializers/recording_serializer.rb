class RecordingSerializer < ActiveModel::Serializer
  # has_many :notes
  belongs_to :users
  attributes :user_id, :title, :melody, :created_at
end
