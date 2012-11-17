class InvoiceItem < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :service_type
end
