class NoteSerializer < ActiveModel::Serializer
  belongs_to :recordings
  attributes :id, :recording_id, :pitch
end
