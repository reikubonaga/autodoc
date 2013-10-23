class Recipe < ActiveRecord::Base
  attr_accessible :name, :type
  validates :type, inclusion: { in: 1..3 }, allow_blank: true
end
