class Coremodels < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :name2
      t.string :source
      t.timestamps
    end

    create_table :notes do |t|
      t.text :body
      t.integer :customer_id
      t.timestamps
    end

    create_table :phone_numbers do |t|
      t.string :number
      t.string :type
      t.integer :customer_id
      t.timestamps
    end

    create_table :emails do |t|
      t.string :email
      t.integer :customer_id
      t.timestamps
    end

    create_table :locations do |t|
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :postal
      t.string :lat
      t.string :lng
      t.integer :customer_id
      t.integer :sqft
      t.integer :rooms
      t.integer :stories
      t.boolean :has_carpeted_stairs
      t.boolean :has_pets
      t.timestamps
    end

    create_table :service_types do |t|
      t.string :name
      t.timestamps
    end

    create_table :invoices do |t|
      t.integer :customer_id
      t.integer :location_id
      t.datetime :service_date
      t.timestamps
    end

    create_table :invoice_items do |t|
      t.integer :invoice_id
      t.integer :service_type_id
      t.text :notes
      t.integer :price
    end

  end
end
