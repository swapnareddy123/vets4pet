class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :category
      t.string :breed
      t.string :age
      t.string :weight
      t.date :last_visit
      t.references :customer

      t.timestamps
    end

    add_index :pets, :customer_id
  end
end
