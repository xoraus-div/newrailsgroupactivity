class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.string :diseasename

      t.timestamps
    end
  end
end
