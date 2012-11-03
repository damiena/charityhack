class CreateGives < ActiveRecord::Migration
  def change
    create_table :gives do |t|
      t.integer :hours
      t.string :charityname
      t.integer :charityid

      t.timestamps
    end
  end
end
