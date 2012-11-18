class Invoice < ActiveRecord::Base
  belongs_to :customer
  belongs_to :location
  has_many :invoice_items
  just_define_datetime_picker :service_date, :add_to_attr_accessible => true
  validates :service_date, :presence => true
  attr_accessible :service_date, :customer_id, :admin_user_id
  
  def create_invoice_item(params)
    price = (params[:price].to_f * 100).to_i
    invoice_item = self.invoice_items.create( :price => price, :notes => params[:notes], :service_type_id => params[:service_type_id] )
    return invoice_item
  end

  def total
    return self.invoice_items.inject(0){|m,item| m += item.price }
  end
end
