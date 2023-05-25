class Venue < ApplicationRecord
	belongs_to :event
	has_one :address, dependent: :destroy, :as => :addressable
	accepts_nested_attributes_for :address, :allow_destroy => true
end
