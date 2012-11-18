class Superuser < ActiveRecord::Migration
  def change
    add_column :admin_users, :super_duper, :boolean, :default => false
  end
end
