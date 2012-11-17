require 'spec_helper'

describe Customer do
  it{ should have_many(:locations) }
  it{ should have_many(:emails) }
  it{ should have_many(:phone_numbers) }
  it{ should have_many(:invoices) }
  it{ should have_many(:notes) }
end
