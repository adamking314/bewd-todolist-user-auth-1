class CreateSession < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.references :user, foreign_key: true, null: false # Links session to a user
      t.string :session_token, null: false, unique: true # Stores the session token
      t.datetime :expires_at    

      t.timestamps
    end
  end
end
