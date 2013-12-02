class Person < ActiveRecord::Base
  belongs_to :membership
  has_many :devices
  validates_presence_of :membership, :name
end
