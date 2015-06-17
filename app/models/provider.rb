class Provider < ActiveRecord::Base
  has_many :services

  validates :name, presence: true
end
