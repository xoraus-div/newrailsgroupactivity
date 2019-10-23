class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :animalname
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
