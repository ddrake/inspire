class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :remember_token
      t.references :message, index: true

      t.timestamps
    end
  end
end
