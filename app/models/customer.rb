class Customer < ActiveRecord::Base
  has_many :emails
  has_many :phone_numbers
  has_many :invoices
  has_many :locations
  has_many :notes
  has_many :service_types

  attr_accessible :first_name, :last_name, :phone, :phone2, :email, :email2, :address, :city, :state, :postal, :sqft, :rooms, :has_pets, :has_stairs

  def display_name
    return "#{last_name}, #{first_name}"
  end
end
