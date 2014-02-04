class List < ActiveRecord::Base
  has_many :steps
  belongs_to :users
  accepts_nested_attributes_for :steps, allow_destroy: true
end
