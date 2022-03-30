class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.references :name, null: false, foreign_key: true
      t.string :gender
      t.string :email

      t.timestamps
    end
  end
end
