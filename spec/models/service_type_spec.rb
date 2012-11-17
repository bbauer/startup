require 'spec_helper'

describe ServiceType do
  it{ should have_many(:invoice_items) }
end
