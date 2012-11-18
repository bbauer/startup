class ServiceType < ActiveRecord::Base
  has_many :invoice_items
  attr_accessible :name, :admin_user_id
end
