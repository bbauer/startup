class ServiceType < ActiveRecord::Base
  has_many :invoice_items
end
