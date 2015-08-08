class TestName < ActiveRecord::Base
  attr_accessible :bio_ref, :element, :mth_tec, :name, :result, :test_title_id, :unit_mea

  belongs_to :test_title
end
