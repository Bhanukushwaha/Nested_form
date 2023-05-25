class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :description
      t.boolean :test

      t.timestamps
    end
  end
end
