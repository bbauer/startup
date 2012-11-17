class UserOwnership < ActiveRecord::Migration
  def change
    [:customers, :invoices, :locations, :service_types].each do |t|
      add_column t, :admin_user_id, :integer
    end

    add_column :customers, :email, :string
    add_column :customers, :email2, :string
    add_column :customers, :phone, :string
    add_column :customers, :phone2, :string
    add_column :customers, :address, :string
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :postal, :string
    add_column :customers, :lat, :string
    add_column :customers, :lng, :string
    add_column :customers, :sqft, :integer
    add_column :customers, :rooms, :integer
    add_column :customers, :has_pets, :boolean
    add_column :customers, :has_stairs, :boolean
    add_column :customers, :last_service_date, :date
    add_column :service_types, :customer_id, :integer

  end
end
