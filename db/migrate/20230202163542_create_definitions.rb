class CreateDefinitions < ActiveRecord::Migration[7.0]
  def change
    create_table :definitions do |t|
      t.text :term
      t.text :definition
      t.text :category

      t.timestamps
    end
  end
end
