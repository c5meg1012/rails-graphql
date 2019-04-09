class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :location_id
      t.string :integer

      t.timestamps
    end
  end
end
