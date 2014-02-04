class List < ActiveRecord::Base
  belongs_to :users
  has_many :steps
  acts_as_nested_set
  accepts_nested_attributes_for :steps, allow_destroy: true
end
