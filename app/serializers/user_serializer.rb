class UserSerializer < ActiveModel::Serializer
    has_many :recordings
    attributes :id, :name, :created_at
  end