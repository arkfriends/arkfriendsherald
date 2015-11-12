class CreateStaffs < ActiveRecord::Migration
  def self.up
    create_table :staffs do |t|
      t.string :name
      t.string :login
      t.string :password
      t.integer :role_id

      t.timestamps
    end
  end
  
  def self.down
    drop_table :staffs
  end
end
