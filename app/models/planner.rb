class Planner < ApplicationRecord
 belongs_to :event
 has_many :addresses, dependent: :destroy, :as => :addressable
 accepts_nested_attributes_for :addresses, :allow_destroy => true
end
