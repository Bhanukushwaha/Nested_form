class Address < ApplicationRecord
	belongs_to :addressable, polymorphic: true
	validates :city, presence: true
end
