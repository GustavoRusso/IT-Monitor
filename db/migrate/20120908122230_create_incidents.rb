class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :key
      t.string :service
      t.string :description
      t.string :severity
      t.string :status
      t.datetime :open_time
      t.datetime :close_time

      t.timestamps
    end
  end
end
