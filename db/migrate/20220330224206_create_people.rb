class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :title
      t.string :first
      t.string :last
      t.string :gender
      t.string :email

      t.timestamps
    end
  end
end
