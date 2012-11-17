require 'spec_helper'

describe Invoice do
  it{ should belong_to(:customer) }
  it{ should belong_to(:location) }
  it{ should have_many(:invoice_items) }
end
