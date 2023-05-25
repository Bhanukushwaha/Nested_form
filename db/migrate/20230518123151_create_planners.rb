class CreatePlanners < ActiveRecord::Migration[7.0]
  def change
    create_table :planners do |t|
      t.string :name
      t.integer :event_id

      t.timestamps
    end
  end
end
