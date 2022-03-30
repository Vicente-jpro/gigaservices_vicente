class CreateNames < ActiveRecord::Migration[7.0]
  def change
    create_table :names do |t|
      t.string :title
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end
