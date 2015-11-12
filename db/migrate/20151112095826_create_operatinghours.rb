class CreateOperatinghours < ActiveRecord::Migration
  def change
    create_table :operatinghours do |t|
      t.integer :dow
      t.time :starting
      t.time :ending

      t.timestamps
    end
  end
end
