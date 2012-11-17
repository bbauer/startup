require 'spec_helper'

describe Location do
  it{ should belong_to(:customer) }
  it{ should have_many(:invoices) }
end
