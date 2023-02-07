class CreateDefinitions < ActiveRecord::Migration[7.0]
  def change
    create_table :definitions do |t|
      t.string :term
      t.text :definition
      t.string :category

      t.timestamps
    end
  end
end
