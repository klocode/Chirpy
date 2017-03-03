class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :photo_url
      t.string :password_digest
      t.string :token

      t.timestamps
    end
  end
end
