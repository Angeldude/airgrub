class CreateProduces < ActiveRecord::Migration
  def change
    create_table :produces do |t|
      t.string :name
      t.text :description
      t.integer :price_in_cents

      t.timestamps null: false
    end
  end
end
