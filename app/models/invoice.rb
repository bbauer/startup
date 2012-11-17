class Invoice < ActiveRecord::Base
  belongs_to :customer
  belongs_to :location
  has_many :invoice_items
  just_define_datetime_picker :service_date, :add_to_attr_accessible => true
  validates :service_date, :presence => true
  
end
