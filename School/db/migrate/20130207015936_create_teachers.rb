class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :full_name
      t.string :email_address

      t.timestamps
    end
  end
end
