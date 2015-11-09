class CreateStaffs < ActiveRecord::Migration
   def self.up
    create_table :staffs do |t|
      t.column :name, :string
      t.column :login, :string
      t.column :password, :string
      t.column :role_id, :integer
    end
  end
  
   def self.down
    drop_table :staffs
  end
end
