class CreateTables < ActiveRecord::Migration[6.0]
  def change
  
  # CREATION DE LA TABLE USERS
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :remember_digest
      t.timestamps
    end
    
  # CREATION DE LA TABLE EVENTS
    create_table :events do |t|    
    	t.string :title
    	t.text :description
    	t.datetime :start_date
    	t.integer :duration
    	t.integer :price
    	t.string :location
    	t.belongs_to :admin, index: true
    	t.timestamps
    end

  # CREATION DE LA TABLE ATTENDANCES
    create_table :attendances do |t|    
    	t.belongs_to :user, index: true
    	t.belongs_to :event, index: true
    	t.string :stripe_customer_id
      t.timestamps
    end    
    
  end
end
