class List < ActiveRecord::Base
  has_many :steps
  accepts_nested_attributes_for :steps, allow_destroy: true
end
