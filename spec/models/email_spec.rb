require 'spec_helper'

describe Email do
  it{ should belong_to(:customer) }
end
