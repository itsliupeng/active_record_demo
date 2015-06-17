class Service < ActiveRecord::Base
  belongs_to :provider
  has_many :users, through: :user_services

  validates :amount, :api, presence: true



  # when destroy, just set :trash true, so not affect the user_service
  alias_method :destroy_from_db, :destroy
  def destroy
    update_attributes(trash: true)
  end

  # not use blew methods, we only use update_attributes
  undef_method :update_attribute, :update_columns, :update_column

  # cannnot alter api
  alias :old_update_attributes :update_attributes
  def update_attributes(attributes)
    if attributes.is_a? Hash
      raise "cannot update the api column in an existing service, you shuold create a new service" if attributes.has_key?(:api)
      old_update_attributes(attributes)
    else
      raise "attributes should be a Hash"
    end
  end
end
