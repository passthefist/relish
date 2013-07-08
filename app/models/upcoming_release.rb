class UpcomingRelease < ActiveRecord::Base
  belongs_to :release
  attr_accessible :scheduledTime

  def as_json(options={})
    {
      :scheduledTime => self.scheduledTime,
      :release => self.release.as_json
    }
  end
end
