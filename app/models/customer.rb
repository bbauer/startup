class Customer < ActiveRecord::Base
  has_many :emails
  has_many :phone_numbers
  has_many :invoices
  has_many :locations
  has_many :notes
end
