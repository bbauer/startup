class Location < ActiveRecord::Base
  has_many :invoices
  belongs_to :customer
end
