class CreateNewsitems < ActiveRecord::Migration
  def self.up
    create_table :newsitems do |t|
      t.string :title
      t.string :filename
      t.integer :filetype_id
      t.integer :priority
      t.integer :duration
      t.date :starting
      t.date :ending
      t.integer :staff_id

      t.timestamps
    end
  end
  
  def self.down
    drop_table :newsitems 
  end
end
