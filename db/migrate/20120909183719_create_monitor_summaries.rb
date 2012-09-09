class CreateMonitorSummaries < ActiveRecord::Migration
  def change
    create_table :monitor_summaries do |t|
      t.integer :active_incidents

      t.timestamps
    end
  end
end
