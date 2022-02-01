class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :gender
      t.text :bio

      t.timestamps
    end
  end
end
