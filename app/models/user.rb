class User < ActiveRecord::Base
  has_many :services, through: :user_services
  has_many :user_services

  validates :name, presence: true
end
