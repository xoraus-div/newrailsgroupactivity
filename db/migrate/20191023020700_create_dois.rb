class CreateDois < ActiveRecord::Migration[6.0]
  def change
    create_table :dois do |t|
      t.date :doidate
      t.references :animal, null: false, foreign_key: true
      t.references :disease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
