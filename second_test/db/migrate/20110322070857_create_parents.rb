class CreateParents < ActiveRecord::Migration
  def self.up
    create_table :parents do |t|
      t.string :name
      t.string :telephone
      t.string :email
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :parents
  end
end
