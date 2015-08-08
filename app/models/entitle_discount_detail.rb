class EntitleDiscountDetail < ActiveRecord::Base
  attr_accessible :address, :contact_no, :contact_person, :dept, :designation, :dob, :entitle_discount_id, :name, :rate, :ref_code, :specialize, :tax_pan

  belongs_to :entitle_discount

  after_create :save_ref_code

  def save_ref_code
   puts "!!!!"
   
   if self.entitle_discount.ref_type == "Medicine Store"
    @a = Time.now
    @a = SecureRandom.urlsafe_base64(3)
    @code = "MED010" + @a
   end
   
   self.update_attribute(:ref_code,@code)
  end
end
