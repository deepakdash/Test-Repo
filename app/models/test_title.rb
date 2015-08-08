class TestTitle < ActiveRecord::Base
  attr_accessible :department_id, :description, :price, :process, :remarks, :restriction, :social_note, :tat, :title

  belongs_to :department
  has_many :test_names
end
