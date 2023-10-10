class User < ApplicationRecord
  has_many :send_requests, :foreign_key => "sender_id", :class_name => "Friend" , dependent: :destroy
  has_many :receive_requests, :foreign_key => "receiver_id", :class_name => "Friend", dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates_uniqueness_of :username
  scope :all_except, ->(user) { where.not(id: user) }
  after_create_commit { broadcast_append_to "users" }
  has_many :messages
end