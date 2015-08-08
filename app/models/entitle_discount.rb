class EntitleDiscount < ActiveRecord::Base
  attr_accessible :ref_code, :ref_type

  has_many :entitle_discount_details


end
