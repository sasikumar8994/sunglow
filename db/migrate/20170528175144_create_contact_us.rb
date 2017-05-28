class CreateContactUs < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_us do |t|
      t.string :hours_of_operation
      t.string :number_of_fixtures
      t.string :company
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
