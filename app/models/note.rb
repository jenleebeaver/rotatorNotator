class Note < ApplicationRecord
    belongs_to :recordings
    accepts_nested_attributes_for :recordings 
end
