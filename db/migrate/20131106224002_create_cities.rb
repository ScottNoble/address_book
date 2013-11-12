class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :population
      t.string :state
      t.integer :elevation

      t.timestamps
    end
  end
end
