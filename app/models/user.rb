class User < ApplicationRecord
  has_many :notes

  # validation
  validates_presence_of :name
  validates_uniqueness_of :name
  #validates_length_of :name, minimum: 6, maximum: 20
end
