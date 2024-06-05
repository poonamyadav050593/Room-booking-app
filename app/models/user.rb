class User < ApplicationRecord
  
  belongs_to :role
  has_many :rooms
  has_many :reservations
  has_many :rooms, through: :reservations

  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  validates :username, presence: true
end
