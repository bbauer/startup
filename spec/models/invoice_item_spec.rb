require 'spec_helper'

describe InvoiceItem do
  it{ should belong_to(:invoice) }
  it{ should belong_to(:service_type) }
end
