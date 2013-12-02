class Connection < ActiveRecord::Base
  belongs_to :device

  before_create :set_start_stamp

protected

  def set_start_stamp
    self.start_stamp = Time.now
  end
end
