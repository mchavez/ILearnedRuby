class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.string :description
      t.string :date
      t.string :course_id

      t.timestamps
    end
  end
end
