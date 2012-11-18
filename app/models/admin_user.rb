class AdminUser < ActiveRecord::Base
  has_many :service_types
  has_many :customers
  has_many :invoices
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :latitude, :longitude, :logo_url, :company_name, :phone, :address, :city, :state, :postal, :website, :twitter, :facebook
  # attr_accessible :title, :body

  def full_street_address
    "#{address} #{city}, #{state} #{postal}"
  end

end
