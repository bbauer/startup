class InvoiceItem < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :service_type
  attr_accessible :price, :notes, :service_type_id
end
