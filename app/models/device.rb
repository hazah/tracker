class Device < ActiveRecord::Base
  belongs_to :person

  validates_presence_of :person, :kind, :contact, :mac
end
