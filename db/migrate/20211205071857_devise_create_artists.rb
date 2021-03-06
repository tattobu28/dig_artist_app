# frozen_string_literal: true

class DeviseCreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      ## Database authenticatable
      t.string  :artist_id,          null: false, unique: true
      t.string  :name,               null: false
      t.string  :email,              null: false, default: ""
      t.string  :encrypted_password, null: false, default: ""
      t.string  :member,             null: false
      t.text    :info,               null: true
      t.integer :city_id,            null: false
      t.integer :genre_id,           null: false
      t.string  :website,            null: true
      t.string  :twitter,            null: true
      t.string  :instagram,          null: true

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :artists, :email,                unique: true
    add_index :artists, :reset_password_token, unique: true
    # add_index :artists, :confirmation_token,   unique: true
    # add_index :artists, :unlock_token,         unique: true
  end
end
