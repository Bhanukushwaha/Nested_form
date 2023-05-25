class Event < ApplicationRecord
 has_many :planner, dependent: :destroy
 has_many :venues, dependent: :destroy
 accepts_nested_attributes_for :venues, :allow_destroy => true
 accepts_nested_attributes_for :planner, :allow_destroy => true
end
