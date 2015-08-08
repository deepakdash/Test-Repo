class EntitleIncentive < ActiveRecord::Base
  attr_accessible :ref_type,:ref_code

  has_many :entitle_incentive_details

  after_create :save_ref_code

  def save_ref_code
   
   @a = Time.now
   @a = SecureRandom.urlsafe_base64(7)
 
   self.update_attribute(:ref_code,@a)
  end
end
