class EntitleIncentiveDetail < ActiveRecord::Base
  attr_accessible :address, :contact_no, :contact_person, :dept, :designation, :dob, :entitle_incentive_id, :name, :rate, :ref_code, :specialize, :tax_pan

  belongs_to :entitle_incentive

  after_create :save_ref_code

  def save_ref_code
   puts "!!!!"
   
   if self.entitle_incentive.ref_type == "Doctor"
    @a = Time.now
    @a = SecureRandom.urlsafe_base64(3)
    @code = "DR001" + @a
   end
   
   self.update_attribute(:ref_code,@code)
  end
end
