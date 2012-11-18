require 'spec_helper'

describe Invoice do
  it{ should belong_to(:customer) }
  it{ should belong_to(:location) }
  it{ should have_many(:invoice_items) }

  context 'total' do
    it{ should respond_to(:total) }
    it 'should return the correct invoice total in cents' do
      @invoice = Invoice.create(:service_date => Time.now + 7.days)
      @invoice.create_invoice_item(:price => "100.00", :notes => 'zomg')
      @invoice.create_invoice_item(:price => "50.50", :notes => 'zomg')
      @invoice.total.should eql(15050)
    end
  end
  context 'create_invoice_item' do
    it{ should respond_to(:create_invoice_item) }

    it 'should create an invoice item' do
      @invoice = Invoice.create(:service_date => Time.now + 7.days)
      expect{
        @invoice.create_invoice_item(:price => "100.00", :notes => 'zomg')
      }.to change(@invoice.invoice_items, :count).from(0).to(1)
    end

    it 'should store the invoice item price in cents' do
      @service_type = ServiceType.create(:name => 'Carpet Cleaning')
      @invoice = Invoice.create(:service_date => Time.now + 7.days)
      invoice_item = @invoice.create_invoice_item(:price => "100.00", :notes => 'zomg', :service_type_id => @service_type.id)
      invoice_item.price.should eql(10000)
      invoice_item.notes.should eql('zomg')
      invoice_item.service_type.should eql(@service_type)
    end
  end
end
