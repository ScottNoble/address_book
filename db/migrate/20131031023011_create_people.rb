class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address_line_one
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
