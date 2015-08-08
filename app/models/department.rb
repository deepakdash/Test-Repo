class Department < ActiveRecord::Base
  attr_accessible :dep_type, :department_code, :name

  has_many :test_titles
end
