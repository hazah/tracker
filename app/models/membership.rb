class Membership < ActiveRecord::Base
  has_many :people
  validates_presence_of :kind, :name, :address
end
