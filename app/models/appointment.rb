class Appointment < ActiveRecord::Base
  belongs_to :vet

  validates :vet_id, :presence => true
  validates :reason, :presence => true
  validate :not_past_date


  private

  def not_past_date
     if !visit_on.blank? && visit_on < Date.today
      errors.add(:visit_on, "should be a future date and time")
    end
  end

end
