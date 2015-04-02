class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :customer
      t.string :pet
      t.datetime :visit_on
      t.boolean :reminder
      t.string :reason
      t.references :vet

      t.timestamps
    end

    add_index :appointments, :vet_id
  end
end
