class HomeController < ApplicationController
  def index
  end
 
  def reference_categories
   @entitle_incentives = EntitleIncentive.all
   @entitle_discounts = EntitleDiscount.all
  end

 def entitles_incentive_detail
 	@entitle_incentive_details = EntitleIncentiveDetail.all
 end
 
 def entitles_discount_detail
 	@entitle_discount_details = EntitleDiscountDetail.all
 end

end
