class Note < ApplicationRecord
  belongs_to :user
  # validation
  validates_presence_of :title, :content, :group, :alias_name
end
