class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :teacher
      t.string :student
      t.string :parent

      t.timestamps null: false
    end
  end
end
