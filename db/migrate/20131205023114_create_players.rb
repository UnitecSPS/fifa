class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.references :country

      t.timestamps
    end
    add_index :players, :country_id
  end
end
