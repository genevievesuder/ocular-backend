class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :email
      t.text :username
      t.text :password_digest
      t.text :education
      t.text :title
      t.text :field
      t.text :about

      t.timestamps
    end
  end
end
