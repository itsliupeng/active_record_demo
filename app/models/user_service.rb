class UserService < ActiveRecord::Base
  belongs_to :service
  belongs_to :user

  validates :price, :total_times, presence: true

  before_validation :add_price_and_amount

  def can_use?
    self.total_times - self.used_times > 0
  end

  def used(times = 1)
    # need to be atomic in threaded-mod
    self.used_times += times
    # can cache in mem, accumulate to some amount, then write to db
    self.save
  end

  private
  def add_price_and_amount
    self.price, self.total_times = self.service.price, self.service.amount
  end
end
