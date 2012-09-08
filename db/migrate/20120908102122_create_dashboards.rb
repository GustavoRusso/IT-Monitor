class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.integer :active_incidents
      t.integer :active_problems
      t.integer :requested_changes

      t.timestamps
    end
  end
end
