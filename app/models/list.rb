class List < ActiveRecord::Base
  belongs_to :users
  acts_as_nested_set
  accepts_nested_attributes_for :children, allow_destroy: true
end
