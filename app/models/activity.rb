class Activity < ActiveRecord::Base
  belongs_to :connection
  before_save :set_timestamp

protected

  def set_timestamp
    self.stamp = Time.now
  end
end
