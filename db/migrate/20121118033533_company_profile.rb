class CompanyProfile < ActiveRecord::Migration
  def change
    add_column :admin_users, :logo_url, :string
    add_column :admin_users, :company_name, :string
    add_column :admin_users, :phone, :string
    add_column :admin_users, :address, :string
    add_column :admin_users, :city, :string
    add_column :admin_users, :state, :string
    add_column :admin_users, :postal, :string
    add_column :admin_users, :website, :string
    add_column :admin_users, :twitter, :string
    add_column :admin_users, :facebook, :string
  end
end
