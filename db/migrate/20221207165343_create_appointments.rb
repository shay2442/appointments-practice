class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, null: false, foreign_key: true
      t.belongs_to :patient, null: false, foreign_key: true
      t.datetime :start_time
      t.integer :duration_in_minutes

      t.timestamps
    end
  end
end
